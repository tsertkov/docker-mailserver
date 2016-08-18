CONFIG_FILE = ./config.env
PROJECT_NAME = $(shell sed -n 's/^PROJECT_NAME\s*=\s*//p' "$(CONFIG_FILE)")
DOCKER_COMPOSE = $(shell cat "$(CONFIG_FILE)") docker-compose -p "$(PROJECT_NAME)"

all:
	@echo "Usage: make up|ps|stop|down"

up:
	@$(DOCKER_COMPOSE) up -d

ps:
	@$(DOCKER_COMPOSE) ps

stop:
	@$(DOCKER_COMPOSE) stop

down:
	@$(DOCKER_COMPOSE) down --volumes
