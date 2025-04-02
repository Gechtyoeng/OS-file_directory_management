#!/bin/bash

# Include the log function for logging actions
source log.sh  

# Function to perform backup
backup_files() {
  # Ask the user for the source (file or directory) to back up
  read -p "Enter the file or directory to backup: " source
  
  # Ask for the destination backup location
  read -p "Enter the backup location: " destination

  # Check if the source exists
  if [ ! -e "$source" ]; then
    echo "Error: Source does not exist."
    log_action "ERROR: Backup failed. Source '$source' does not exist."
    return 1  # Return 1 to indicate failure, prevents exit from the script
  fi

  # Create the destination directory if it doesn't exist
  mkdir -p "$destination"     

  # Perform the backup by copying the file or directory
  cp -r "$source" "$destination"

  # Log the successful backup
  log_action "SUCCESS: Backed up '$source' to '$destination'."
}

# Call the function
backup_files

