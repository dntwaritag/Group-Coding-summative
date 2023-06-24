#!/bin/bash

# Create the directory name based on the negpod_id and q1
directory_name="0323-RW-SOFEN-8120120 11-q1"
mkdir "$0323-RW-SOFEN-8120120 11-q1"

# Move the files created in question 1 to the directory
mv students-list_0333.txt main.sh select-emails.sh "$0323-RW-SOFEN-8120120 11-q1"

echo "Files moved to $0323-RW-SOFEN-8120120 11-q1."

