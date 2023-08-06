# Script:                       Loops: Ops Challenge 05                   
# Author:                       Brandon Jensen (template borrowed from class 05 repo/class05/challenges/DEMO.md)
# Date of latest revision:      08.05.23
# Purpose:                      Write a script that displays running processes, asks the user for a PID, then kills the process with that PID.
#                               Use a loop in your script.

# 100% full disclosure: I used the template that Jermain demo'd in class and while it seems like my version also works, Bash is still foreign to me. I... 
# understand (I think) how variables are assigned but I thought they had to be determined up above the code block in order to work.  
# The only reason I was able to add the "Ctrl+c" to stop the loop was because I saw what was in the Demo code for Ops Challenge 05, but I had no idea what
# <-e> or <\n> meant until I looked them up. I don't think I could readily recall that those functions exist if I needed them. I would probably have to 
# stumble upon them.
# I also tried writing this code so that the user could enter a Y or N response to continue on with the "kill" command and I got it to work but with 
# a lot of help from ChatGPT. I am not understanding when to use "[]" and why some code blocks have double brackets "[[ ]]". I need to go back and read
# through Bash basics.
#

loopy() {
  while true; do
    echo "Currently Running Processes:"
    
    echo "Please take note of all process PIDs"
  
    ps aux
  
    echo "Please enter the PID of the process you wish to kill:"
    
    read kill_the_pid
    
    echo "You Entered PID $kill_the_pid"
    
    echo "For confirmation, please re-enter the PID you wish to kill."
    
    read kill_the_pid
    
    echo "Confirmed. PID $kill_the_pid has been selected for termination"

    sleep 1
    
    echo "Process is being terminated. Please wait."
    
    sleep 2

    kill "$kill_the_pid"
    
    echo "Termination complete. Thank you."

    sleep 1

    echo "To stop this loop at any time, press Ctrl + c"

    sleep 3
    
  done

}

# Main
loopy

# # # # # Everything below this line is just a copied Ops Challenge 05 demo template with no changes made to it. # # # # #


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























