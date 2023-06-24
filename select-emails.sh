#!/bin/bash

# Select only the emails from the student records file
cut -d ',' -f 1 students-list_0333.txt > student-emails.txt

echo "Emails selected and saved to student-emails.txt."

