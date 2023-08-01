#!/bin/bash

# Script Name:                  Bash Conditionals Ops Challenge
# Author:                       Brandon
# Date of latest revision:      07/31/23
# Purpose:                      Create a script that detects if a file or directory exists, then creates it if it does not exist.
# Remember: Your script must contain one Array, one Loop, and one Conditional. 

# Array to store the grocery list
arkham_patient_psych_eval_list=("Harleen Quinzel" "Oswald Cobblepot" "Slade Wilson" "Pamela Isley")

# Function to check if a name is on evaluation list
is_patient_on_list() {
  search_patient="$1" #patient I am looking for in the list
  for patient in "${arkham_patient_psych_eval_list[@]}" ; do
    #check if patient im searching for is in the array or not
    if [ "$patient" == "$search_patient" ]; then 
      return 0 #true - patient was located.
    fi
  done
  return 1 # false - patient not found
}

# Loop to repeatedly ask the user for names to check
while true; do 
  # Ask the user for input of a patient to look for on the list
  read -p "Please enter a patient name to see if they are scheduled or not.(or type 'done' to finish)" name_to_check 
    # name_to_check is a variable that will store the user's input

  # check if the user's input is "done"
  if [ "$name_to_check" = "done" ]; then
    break
  fi


  if is_patient_on_list "$name_to_check"; then
    echo "Patient '$name_to_check' is already scheduled for an evaluation."
  else
    # if the patient is not on the list, ask the user if they want to add it
    read -p " '$name_to_check' is not scheduled for an evaluation. Would you like to add them? (yes/no)" add_name
    if [ "$add_name" = "yes" ]; then
      arkham_patient_psych_eval_list+=(""$name_to_check")
      echo "'$name_to_check' has been added to the evaluation list."
    else
      echo "'$name_to_check' has not had an evaluation scheduled."
    fi
  fi
done

read -p "Are you ready to see the completed psych evaluation lsit? (yes/no)" show_list
if [ "$show_list" = "yes" ]; then 
  echo "Patients Currently Scheduled for Evaluation: "
  echo "${arkham_patient_psych_eval_list[@]}"
else
  echo "Be sure to double check the list before end of day."
fi


# End