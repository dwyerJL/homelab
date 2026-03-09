# Homelab Infrastructure

This repository documents my home server environment - the hardware, services, and configurations I use to learn practical IT skills. This is a work in progress as I continue to expand and improve my setup.

## 🖥️ Hardware

- **Host Machine:** Repurposed gaming PC
- **Storage:** 8TB hard drive for media library
- **Status:** Running 24/7 for continuous service availability

## 🏗️ Operating System

- **Ubuntu Server 24.04.3 LTS**
- **Remote Access:** SSH and Cockpit for web-based server management

## 🐳 Docker Services

All services run in Docker containers managed with Docker Compose. Below is my current stack:

### Network & DNS
- **[AdGuard Home](https://github.com/AdguardTeam/AdGuardHome)** - Network-wide ad blocking and custom DNS filtering
- **[Nginx Proxy Manager](https://nginxproxymanager.com/)** - Reverse proxy with SSL for secure access to web services

### Media
- **[Plex Media Server](https://www.plex.tv/)** - Streaming 8TB of personal media to devices on any network

### Management & Monitoring
- **[Portainer](https://www.portainer.io/)** - Web-based Docker container management
- **[Cockpit](https://cockpit-project.org/)** - Server administration via web interface
- **[Glance](https://github.com/glanceapp/glance)** - Server dashboard for system monitoring
- **[FileBrowser](https://filebrowser.org/)** - Remote file management via web browser
- **[Watchtower](https://github.com/containrrr/watchtower)** - Automated Docker container updates

### Gaming
- **[Crafty Controller](https://craftycontrol.com/)** - Minecraft server management panel

## 🔧 Configuration Highlights

### Network Setup
- **Custom Domain Names**: Configured through Nginx Proxy Manager for local service access
- **DNS Integration**: AdGuard Home configured with DNS rewrites to work alongside Nginx Proxy Manager
- **Port Forwarding**: Specific ports exposed for remote access to approved services

### Key Problem Solved
Getting Nginx Proxy Manager to work with AdGuard Home required DNS rewrite configuration. This allows me to access services via custom domain names locally while maintaining ad-blocking functionality.

### Docker Compose
All services are defined in docker-compose.yml files. My configurations include volume mounts, port mappings, and environment variables for each service. These files are being added to the `/docker` directory as I refine them.

## 📁 Repository Contents

- `/docker` - Docker Compose configurations for all services *(populating as I refine each setup)*
- `/docs` - Documentation including:
  - [Hardware Specifications](docs/hardware.md)
  - [Network Architecture](docs/network.md)
  - [Service Configuration Notes](docs/services.md)
- `/scripts` - Utility scripts (currently developing backup solution)
- Root directory - Main documentation and future orchestration plans

## 🎯 Current Focus & Next Steps

### Immediate Priorities
1. **Document all Docker Compose files** - Migrate working configurations to this repo
2. **Implement backup solution** - Develop and test reliable backup strategy for critical data
3. **Improve monitoring** - Add basic health checks and alerting

### Future Plans
- Learn Ansible for configuration management
- Implement automated backups
- Add monitoring with Prometheus/Grafana
- Create true "Infrastructure as Code" with reproducible setup

## 💡 Lessons Learned

- **DNS is critical**: Understanding how DNS resolution works across your network saves hours of troubleshooting
- **Container networking**: Docker's network modes and port mapping require careful planning
- **Document as you go**: Future-you will thank present-you for taking notes
- **Start simple**: Build one service at a time and understand it before adding complexity

## 🚀 Want to Learn More?

Check out:
- My [Main GitHub Profile](https://github.com/dwyerJL) for more projects
- Service-specific notes in the `/docs` directory
- Future updates as I expand this environment

---

*This repository reflects my homelab setup as of March 2026. I'm actively learning and improving - check back for updates!*
