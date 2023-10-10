#!/bin/bash

# Function to count the number of files in the current directory
get_file_count() {
    local file_count=$(ls -l | grep -v ^d | wc -l)
    echo "$file_count"
}

# Main game loop
while true; do
    current_count=$(get_file_count)
    
    # Ask the user to guess the number of files
    read -p "Guess the number of files in the current directory: " user_guess
    
    if [[ $user_guess -lt $current_count ]]; then
        echo "Too low! Try again."
    elif [[ $user_guess -gt $current_count ]]; then
        echo "Too high! Try again."
    else
        echo "Congratulations! You guessed correctly."
        break
    fi
done
