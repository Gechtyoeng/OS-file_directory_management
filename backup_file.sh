#!/bin/bash
source log.sh
backup_files() {
    read -p "Enter the file or directory to backup: " source
    read -p "Enter the backup location: " destination
    if [ -e "$source" ]; then
        if [ -d "$destination" ]; then
            cp -r "$source" "$destination"
            log_action "Backup of $source created at $destination"
            echo "Backup successful."
        else
            echo "Error: The destination directory '$destination' does not exist."
            log_action "Failed to backup $source - destination directory does not exist"
        fi
    else
        echo "Error: The source path '$source' does not exist."
        log_action "Failed to backup $source - source path does not exist"
    fi
}
