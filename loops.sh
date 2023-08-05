# Script:                       Loops: Ops Challenge 05                   
# Author:                       Brandon Jensen (template borrowed from class 05 repo/class05/challenges/DEMO.md)
# Date of latest revision:      08.05.23
# Purpose:                      Write a script that displays running processes, asks the user for a PID, then kills the process with that PID.
#                               Use a loop in your script.



# Demo template: Basic for loop
names="Stan Kyle Cartman"
for name in $names
do
  echo $name
done

echo -e "For Loop complete\n"


# Basic while loop

while true
do
  echo -e "What would you like me to say?\n"
  read input
  echo $input

  echo -e "\nTo stop this script at any time, press Ctrl + C\n"
done


# End