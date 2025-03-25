#!/bin/bash
#Check if user provide an argument
if [ $# -eq 0 ];then
	echo "Usage:$0  <directory_or_file>"
	exit 1
fi
echo "argument: $1"
target=$1
if [ -d "$target" ];then
	echo "Listing details for directory: $target"
	ls -l "$target"
elif [ -f "$target" ];then
	echo "Listing details for file: $target"
	ls -l "$target"
else
	echo "Error:$target is not a valid file or directory."
	exit 1
fi
