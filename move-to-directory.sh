#!/bin/bash

# Create the directory name based on the negpod_id and q1
directory_name="0323-RW-SOFEN-8120120 11-q1"

# create the directory
mkdir "$directory_name"

# Move the files created in question 1 to the directory
mv students-list_0333.txt main.sh select-emails.sh "$directory_name"

# provide feed back
echo "Files moved to $directory_name."

