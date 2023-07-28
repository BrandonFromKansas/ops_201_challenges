#!/bin/bash

# Script Name:                  My Arrays Script (attempt at)
# Author:                       Brandon Jensen
# Date of latest revision:      07/27/2023
# Purpose:                      Purpose


# Declaration of variables/Declaration of an array
dir=("arkham_asylum" "crime_alley" "gotham_pd" "wayne_tower")

create_four_directories() {
mkdir "${dir[0]}"
mkdir "${dir[1]}"
mkdir "${dir[2]}"
mkdir "${dir[3]}"
}


# Declaration of functions


# Main
create_four_directories

# End
