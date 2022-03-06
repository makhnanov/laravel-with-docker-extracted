COMPOSE = docker compose --file laradock/docker-compose.yml
up:
	$(COMPOSE) up --detach --force-recreate --build --remove-orphans --rm \
	workspace nginx redis php-fpm
recreate-workspace:
	$(COMPOSE) up --detach --force-recreate --build --remove-orphans workspace
install:
	$(COMPOSE) exec --user=laradock workspace composer install
key:
	$(COMPOSE) exec --user=laradock workspace php artisan key:generate
migrate:
	$(COMPOSE) exec --user=laradock workspace php artisan migrate
shell:
	while true; do clear && $(COMPOSE) exec --user=laradock workspace bash; sleep 1; done;
