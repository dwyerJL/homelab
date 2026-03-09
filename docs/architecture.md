My homelab is built on a single Ubuntu Server 24.04 LTS host running multiple Docker containers.

## Hardware
- **Host:** Custom-built PC / Server / Old desktop
- **CPU:** Intel i5-8400
- **RAM:** 16GB DDR4
- **Storage:** 1TB OS SSD + 8TB Media/Storage HDD
- **Network:** Wired Ethernet connected to TP-Link Router set to access point mode and connected to Telus Network Hub

## Software Stack
- **Host OS:** Ubuntu Server 24.04 LTS
- **Containerization:** Docker 24.0+ with Docker Compose
- **Reverse Proxy:** Nginx Proxy Manager
- **Management:** Portainer, Cockpit

## Services

### Network & DNS
- **AdGuard Home** - Network-wide ad blocking and custom DNS filtering. Configured with DNS rewrites to work seamlessly with Nginx Proxy Manager.
- **Nginx Proxy Manager** - Reverse proxy with SSL certification. Provides secure access to web services via custom domain names.

### Media
- **Plex Media Server** - Streams 8TB of personal media content to devices on any network. Hardware transcoding enabled.

### Management & Monitoring
- **Portainer** - Web-based GUI for Docker container management. Simplifies container deployment and monitoring.
- **Cockpit** - Web-based server administration tool. Provides system overview, terminal access, and service management.
- **Glance** - Self-hosted dashboard showing system status, service health, and useful information at a glance.
- **FileBrowser** - Web-based file manager for remote access to server files. Provides upload/download capabilities.
- **Watchtower** - Automatically monitors and updates running Docker containers to their latest versions.

### Gaming
- **Crafty Controller** - Minecraft server management panel. Provides web-based interface for starting/stopping servers, managing players, and monitoring performance.

## Network Configuration
- All services run in Docker with appropriate network configurations
- Nginx Proxy Manager handles SSL termination and routing
- AdGuard Home manages DNS resolution and ad blocking
- Custom domain names configured for local service access

## Security Considerations
- Firewall configured with ufw (allow only necessary ports: 22/SSH, 80/443, plus specific service ports)
- Regular security updates via unattended-upgrades
- Container isolation through Docker networks
- SSL certificates for all web-facing services via Nginx Proxy Manager
- SSH configured with key-based authentication
- Regular review of logs and service access

## Future Improvements
- Implement automated backup solution for critical data
- Add monitoring with health checks and alerts
- Document all Docker Compose configurations in this repository
- Explore additional services like Nextcloud or Home Assistant
