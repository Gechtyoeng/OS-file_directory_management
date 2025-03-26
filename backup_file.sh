#!/bin/bash

echo  "Enter the file/directory to backup: " 
read source
echo "Enter the backup destination: " 
read destination

if [ -e "$source" ]; then
    cp -r "$source" "$destination"
    echo "Backup successful: $source -> $destination"

else
    echo "Source not found!"
fi
