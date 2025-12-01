# Homelab Infrastructure

This repository contains the Infrastructure as Code (IaC) and documentation for my home server environment.

## 🏗️ Architecture Overview

- **Host:** Ubuntu Server 24.04.3 LTS
- **Orchestration:** Docker with Docker Compose
- **Configuration Management:** Ansible
- **Reverse Proxy:** Nginx
- **Monitoring:** Glance Dashboard
## 📁 Repository Structure

- `ansible/` - Playbooks for reproducible server setup
- `docker/` - Container definitions and docker-compose configurations
- `scripts/` - Maintenance and utility scripts
- `docs/` - Architecture diagrams and operational procedures

## 🚀 Quick Start

1. Clone this repository
2. Review and modify variables in `ansible/inventory.ini`
3. Run the base setup: `ansible-playbook ansible/playbooks/base-server-setup.yml`

## 🔧 Services Deployed

- [Adguard Home] - Network level DNS filtering and ad blocking
- [Nginx Proxy Manager] - Proxy hosts for self-hosted services with SSL encryption
- [Plex Media Server] - Enables organization and streaming of a large personal media collection across devices 
