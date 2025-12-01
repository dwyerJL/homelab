#!/bin/bash
# Simple backup script for homelab
BACKUP_DIR="/backups/homelab"
DATE=$(date +%Y%m%d_%H%M%S)

echo "Starting homelab backup: $DATE"

# Create backup directory if it doesn't exist
mkdir -p $BACKUP_DIR

# Backup docker-compose files
tar -czf $BACKUP_DIR/docker-config-$DATE.tar.gz -C /path/to/your/docker .
echo "Docker configs backed up"

# Optional: Add database backups, etc.
# docker exec -t your-db-container pg_dumpall -U postgres | gzip > $BACKUP_DIR/db-$DATE.sql.gz

echo "Backup completed: $BACKUP_DIR/docker-config-$DATE.tar.gz"
