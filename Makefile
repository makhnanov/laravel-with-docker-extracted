COMPOSE = docker compose --file laradock/docker-compose.yml
COMPOSE_PROJECT_NAME = laradock
up:
	$(COMPOSE) up --detach --force-recreate --build --remove-orphans \
	workspace nginx redis php-fpm
recreate-workspace:
	$(COMPOSE) up --force-recreate --build --remove-orphans workspace --detach
install:
	$(COMPOSE) exec ${COMPOSE_PROJECT_NAME}-workspace composer install
key:
	$(COMPOSE) exec ${COMPOSE_PROJECT_NAME}-workspace php artisan key:generate
migrate:
	$(COMPOSE) exec ${COMPOSE_PROJECT_NAME}-workspace php artisan migrate
shell:
	while true; do clear && $(COMPOSE) exec --user=laradock workspace bash; sleep 1; done;
