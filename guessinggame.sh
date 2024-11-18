#!/bin/bash
# File: guessinggame.sh

# Function to count files
count_files() {
  echo $(ls -1 | wc -l)
}

# Main program
correct_guess=false
file_count=$(count_files)

echo "Welcome to the Guessing Game!"
while [ $correct_guess == false ]
do
  echo "How many files are in the current directory?"
  read guess

  if [ "$guess" -lt "$file_count" ]; then
    echo "Too low! Try again."
  elif [ "$guess" -gt "$file_count" ]; then
    echo "Too high! Try again."
  else
    echo "Congratulations! You guessed correctly."
    correct_guess=true
  fi
done
