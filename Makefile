DOCKER_COMPOSE = $(shell cat ./config.env) docker-compose

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
