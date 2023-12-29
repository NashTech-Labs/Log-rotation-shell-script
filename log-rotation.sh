#!/bin/bash

# Directory where your log files are located
log_directory="/path/to/log/directory"    #specify your path
log_directory-2="/path/to/log/directory-2"    #specify your path

# Number of days for file modification time
days_to_keep=2   #Mention number of days in NATURAL-NUMBER

# Find log files older than two days and delete them
find "$log_directory" -type f -name "*.log" -mtime +"$days_to_keep" -exec rm {} \;  
find "$log_directory-2" -type f -name "*.log" -mtime +"$days_to_keep" -exec rm {} \;

# Notify the user about the deletion
echo "Log files older than $days_to_keep days have been deleted."
