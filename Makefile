COMPOSE = docker compose --file laradock/docker-compose.yml
COMPOSE_PROJECT_NAME = laradock
up:
	$(COMPOSE) up --detach --force-recreate --build --remove-orphans \
	workspace nginx redis php-fpm
down:
	$(COMPOSE) down
recreate-workspace:
	$(COMPOSE) up --force-recreate --build --remove-orphans workspace --detach
install:
	$(COMPOSE) exec --user=laradock workspace composer install
key:
	$(COMPOSE) exec --user=laradock workspace php artisan key:generate
migrate:
	echo stub # $(COMPOSE) exec --user=laradock workspace php artisan migrate
shell:
	while true; do clear && $(COMPOSE) exec --user=laradock workspace bash; sleep 1; done;
