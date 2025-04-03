#!/bin/bash
# Include the functions
source list_details.sh
source backup_file.sh
source os_count_files
source disk_usage.sh
source os_search_file
source compress_file.sh
source log.sh
# Main menu
while true; do
    echo "Select an option:"
    echo "1. List files and sub-directories"
    echo "2. Create backups"
    echo "3. Count number of files"
    echo "4. Display disk usage"
    echo "5. Search for a file"
    echo "6. Compress files or directories"
    echo "7. Exit"
    read -p "Enter your choice: " choice
    case $choice in
        1) list_files ;;
        2) backup_files ;;
        3) count_files ;;
        4) display_disk_usage ;;
        5) search_file ;;
        6) compress_files ;;
        7) exit 0 ;;
        *) echo "Invalid option. Please try again." ;;
    esac
done
