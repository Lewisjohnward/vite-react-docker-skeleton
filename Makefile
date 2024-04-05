.PHONY: development
development:
	docker compose -f build/development/docker-compose.yml build
	docker compose -f build/development/docker-compose.yml up -d

.PHONY: clean-development
clean-development:
	docker compose -f build/development/docker-compose.yml down && \
	docker image rmi app-dev

.PHONY: production
production:
	docker compose -f build/production/docker-compose.yml build
	docker compose -f build/production/docker-compose.yml up -d

.PHONY: clean-production
clean-production:
	docker compose -f build/production/docker-compose.yml down && \
	docker image rmi app-production
