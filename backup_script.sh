#!/bin/bash
DATE=$(date +"%Y-%m-%d")
BACKUP_DIR="/archive/backups/$DATE"
mkdir -p "$BACKUP_DIR"
tar -czf "$BACKUP_DIR/home.tar.gz" /home
tar -czf "$BACKUP_DIR/ssh_config.tar.gz" /etc/ssh/
tar -czf "$BACKUP_DIR/vsftpd_config.tar.gz" /etc/vsftpd.conf # Для FTP
tar -czf "$BACKUP_DIR/xrdp_config.tar.gz" /etc/xrdp/* # Для RDP
tar -czf "$BACKUP_DIR/logs.tar.gz" /var/log
echo "Backup completed successfully at $(date)"