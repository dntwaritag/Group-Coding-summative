#!/bin/bash

# Function to create a student record
create_student() {
  echo "Enter student email:"
  read email
  echo "Enter student age:"
  read age
  echo "Enter student ID:"
  read student_id

  # Append the student record to the file
  echo "$email,$age,$student_id" >> students-list_0333.txt
  echo "Student record created successfully."
}

# Function to view all students
view_students() {
  echo "List of students:"
  cat students-list_0333.txt
}

# Function to delete a student by ID
delete_student() {
  echo "Enter student ID to delete:"
  read student_id

  # Create a temporary file without the student to delete
  grep -v "$student_id" students-list_0333.txt > temp.txt
  mv temp.txt students-list_0333.txt

  echo "Student deleted successfully."
}

# Function to update a student record by ID
update_student() {
  echo "Enter student ID to update:"
  read student_id

  # Search for the student ID in the file
  student=$(grep "$student_id" students-list_0333.txt)

  if [ -z "$student" ]; then
    echo "Student not found."
  else
    echo "Enter updated email:"
    read email
    echo "Enter updated age:"
    read age

    # Replace the student record with the updated values
    sed -i "s/$student_id[^,]*/$email/g;s/[^,]*,$student_id[^,]*/$age/g" students-list_0333.txt
    echo "Student record updated successfully."
  fi
}

# Main application loop
while true; do
  echo "======================"
  echo "Bachelor of Software Engineering Cohort List"
  echo "======================"
  echo "1. Create student record"
  echo "2. View all students"
  echo "3. Delete student"
  echo "4. Update student record"
  echo "5. Exit"
  echo "======================"
  echo "Enter your choice:"

  read choice

  case $choice in
    1) create_student;;
    2) view_students;;
    3) delete_student;;
    4) update_student;;
    5) exit;;
    *) echo "Invalid choice. Please try again.";;
  esac

  echo "======================"
done

