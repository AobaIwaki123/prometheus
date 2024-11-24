setup-docker-repo:
	@echo "========== Updating package lists... =========="
	@apt-get update -y

	@echo "========== Installing required packages... =========="
	@apt-get install -y ca-certificates curl

	@echo "========== Creating directory for Docker GPG key... =========="
	@install -m 0755 -d /etc/apt/keyrings

	@echo "========== Downloading Docker GPG key... =========="
	@curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc

	@echo "========== Setting permissions for GPG key... =========="
	@chmod a+r /etc/apt/keyrings/docker.asc

	@echo "========== Adding Docker repository... =========="
	@echo "deb [arch=$$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu $$(. /etc/os-release && echo $${VERSION_CODENAME}) stable" | \
	tee /etc/apt/sources.list.d/docker.list > /dev/null

	@echo "========== Updating package lists after adding Docker repo... =========="
	@apt-get update -y

install-docker:
	@echo "========== Installing Docker... =========="
	@apt-get install -y docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin

	@echo "========== Starting Docker service... =========="
	@systemctl start docker

	@echo "========== Enabling Docker service... =========="
	@systemctl enable docker

	@echo "========== Checking Docker version... =========="
	@docker --version

	@echo "========== Checking Docker service status... =========="
	@systemctl status docker

	@echo "========== Docker installation completed successfully! =========="

create-volumes:
	@docker volume create metrics_data
	@docker volume create grafana_data

up:
	@docker compose up -d

down:
	@docker compose down

clean-restart:
	@docker compose down
	@docker compose up -d
