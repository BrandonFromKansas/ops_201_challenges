#!/bin/bash

# Script Name:                  Functions Ops Challenge 03
# Author:                       Brandon Jensen
# Date of latest revision:      07/26/2023
# Purpose:                      Write a function that prints the login history of users on this computer, followed by the text “This is the login history”. 
# In your script, call that function three times

# Declaration of variables

print_login_history_of_users_for_this_computer() {
    echo "Batman, here are the logins for everyone that has access to the Bat-computer:"
    last 
    echo "Nightwing, out."
    sleep 3
    echo "Hey, by the way, tell Alfred I'm sorry about the broken plate."
    sleep 4
    echo "Truth be told, it was actually Tim who broke it but he said he was already on thin ice..."
}



# Declaration of functions
print_login_history_of_users_for_this_computer



# Main



# End