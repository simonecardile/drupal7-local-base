SHELL := /bin/bash

.PHONY: help bootstrap build up down restart reset-db fix-permissions logs logs-app logs-mysql logs-adminer ps shell-app shell-mysql db-tables

help:
	@echo "Available commands:"
	@echo "  make bootstrap        - first local project setup"
	@echo "  make build            - build containers"
	@echo "  make up               - start the stack"
	@echo "  make down             - stop and remove containers"
	@echo "  make restart          - restart services"
	@echo "  make reset-db         - rebuild stack and reset database volume"
	@echo "  make fix-permissions  - fix Drupal runtime permissions"
	@echo "  make logs             - show all logs"
	@echo "  make logs-app         - show apache/php logs"
	@echo "  make logs-mysql       - show mysql logs"
	@echo "  make logs-adminer     - show adminer logs"
	@echo "  make ps               - show compose service status"
	@echo "  make shell-app        - open a shell in app container"
	@echo "  make shell-mysql      - open a shell in mysql container"
	@echo "  make db-tables        - list Drupal tables"

bootstrap:
	./scripts/bootstrap.sh

build:
	docker compose build

up:
	docker compose up -d

down:
	docker compose down

restart:
	docker compose restart

reset-db:
	./scripts/reset-db.sh

fix-permissions:
	./scripts/fix-permissions.sh

logs:
	docker compose logs --tail=200

logs-app:
	docker compose logs --tail=200 app

logs-mysql:
	docker compose logs --tail=200 mysql

logs-adminer:
	docker compose logs --tail=200 adminer

ps:
	docker compose ps

shell-app:
	docker compose exec app bash

shell-mysql:
	docker compose exec mysql bash

db-tables:
	docker compose exec mysql mysql -udrupal -pdrupal drupal7 -e "SHOW TABLES;"
