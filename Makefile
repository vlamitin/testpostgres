.PHONY: up
.SILENT: up
up:
	docker-compose up -d

.PHONY: down
.SILENT: down
down:
	docker-compose down

.PHONY: migrate
.SILENT: migrate
migrate:
	docker exec postgres bash -c "cd /usr/share/dvdrental && psql -U postgres -d postgres -h localhost -p 5432 -f restore.sql"
