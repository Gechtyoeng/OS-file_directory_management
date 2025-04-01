#!/bin/bash
# Source function scripts
source list_details.sh
source compress_file.sh
# Main menu
while true; do
    echo "File and Directory Management Program"
    echo "1. List files and sub-directories"
    echo "2. Compress files"
    echo "3. Exit"
    read -p "Choose an option: " option
    case $option in
        1) list_files ;;
         2) compress_files ;;
        3) exit 0 ;;
        *) echo "Invalid option" ;;
    esac
done
