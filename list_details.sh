#!/bin/bash
list_files() {
    read -p "Enter directory or file path: " path
    if [ -d "$path" ]; then
        ls -l "$path"
        echo "$(date): Listed files in directory $path" >> script.log
    elif [ -f "$path" ]; then
        ls -l "$path"
        echo "$(date): Listed file $path" >> script.log
    else
        echo "Invalid path"
        echo "$(date): Invalid path entered: $path" >> script.log
    fi
}
