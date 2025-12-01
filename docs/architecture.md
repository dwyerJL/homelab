My homelab is built on a single Ubuntu Server 24.04 LTS host running multiple Docker containers.

## Hardware
- **Host:** Custom-built PC / Server / Old desktop
- **CPU:** [Intel i5-8400]
- **RAM:** [16gb DDR4]
- **Storage:** [1tb OS SSD + 8tb Media/Storage HDD]
- **Network:** [Wired Ethernet connected to TP-Link Router set to access point mode and connected to Telus Network Hub]

## Software Stack
- **Host OS:** Ubuntu Server 24.04 LTS
- **Containerization:** Docker 24.0+ with Docker Compose
- **Reverse Proxy:** Nginx
- **Management:** Portainer

  ## Services
1. **Nginx** - Reverse proxy and web server
2. **Portainer** - Docker container management GUI
3. [Add more services here]

## Security Considerations
- Firewall configured with ufw
- Regular security updates
- Container isolation
- Separate Docker networks for services
