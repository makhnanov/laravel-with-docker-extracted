COMPOSE = docker compose --file Laradock/docker-compose.yml
up:
	$(COMPOSE) up --detach --force-recreate --build --remove-orphans \
	workspace nginx redis php-fpm
recreate-workspace:
	$(COMPOSE) up --detach --force-recreate --build --remove-orphans workspace
install:
	$(COMPOSE) exec --user=laradock workspace composer install
shell:
	while true; do clear && $(COMPOSE) exec --user=laradock workspace bash; sleep 1; done;
