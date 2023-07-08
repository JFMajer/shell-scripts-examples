#!/usr/bin/env bash

perform_backup() {
    backup_dir="backup_$(date +'%Y%m%d_%H%M%S')"
    mkdir "$backup_dir"
    tar_file="$backup_dir/backup_$(date +'%Y%m%d_%H%M%S').tar.gz"
    tar -czvf "$tar_file" .
    
    echo "Backup created: ${tar_file}"
}

perform_backup

exit 0
