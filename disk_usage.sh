#!/bin/bash

#Source the script
source ./log.sh

#Function to display disk usage
display_disk_usage() {
	read -p "Enter the directory path: " dir

	if [ -d "$dir" ]; then
		echo "Disk usage for: $dir"
		du -sh "$dir"

		#Log the action
		log_action "Checked disk usage of $dir"
	else
		echo "Enter: Directory does not exist!"

		#log_action error
		log_action "Error: Directory $dir does not exist!"
	fi
}
