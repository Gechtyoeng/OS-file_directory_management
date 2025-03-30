#!/bin/bash
#log file location
LOG_FILE="script.log"

#function to display disk usage
display_disk_usage() {
	#ask user for directory input
	read -p "Enter the directory path: " dir

	#check if directory exists
	if [ -d "$dir" ]; then 
		echo "Disk usage for: $dir"
		du -sh "$dir"
		
		#log the action
		echo "$(date +"%Y-%m-%d %H:%M:%S") - Checked disk usage of $dir" >> "$LOG_FILE"
	else 
		echo "Error: Directory does not exist!"
		#log the error
		echo "$(date +"%Y-%m-%d %H:%M:%S") - Error: Directory $dir does not exist" >> "$LOG_FILE"
	fi
}
