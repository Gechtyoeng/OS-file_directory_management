#!/bin/bash
compress_files() {
    read -p "Enter file or directory to compress: " source
    read -p "Enter destination for compressed file: " destination
    tar -czvf "$destination" "$source"
    echo "$(date): Compressed $source to $destination" >> script.log
}
