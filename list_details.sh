#!/bin/bash
source log.sh
list_files() {
    read -p "Enter directory or file path: " path
    if [ -d "$path" ]; then
        ls -l "$path"
        log_action "Listed directories in $path"
    elif [ -f "$path" ]; then
        ls -l "$path"
        log_action "Listed files in $path"
    else
        echo "Invalid path"
        log_action "Invalid  $path" 
    fi
}
