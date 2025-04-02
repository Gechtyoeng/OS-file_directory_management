#!/bin/bash
source log.sh
compress_files() {
    read -p "Enter file or directory to compress: " source
    read -p "Enter destination for compressed file: " destination
    if [ -e "$source" ]; then
        if [ -d "$(dirname "$destination")" ]; then
            tar -czvf "$destination" "$source"
            log_action "Compressed $source to $destination"
            echo "Compression successful."
        else
            echo "Error: The destination directory '$(dirname "$destination")' does not exist."
            log_action "Failed to compress $source - destination directory does not exist"
        fi
    else
        echo "Error: The source path '$source' does not exist."
        log_action "Failed to compress $source - source path does not exist"
    fi
}

