download-config:
	@wget https://raw.githubusercontent.com/grafana/loki/main/examples/getting-started/loki-config.yaml -O loki-config.yaml
	@wget https://raw.githubusercontent.com/grafana/loki/main/examples/getting-started/alloy-local-config.yaml -O alloy-local-config.yaml
	@wget https://raw.githubusercontent.com/grafana/loki/main/examples/getting-started/docker-compose.yaml -O docker-compose.yaml

up:
	@docker compose up -d

down:
	@docker compose down

clean-restart: down up
