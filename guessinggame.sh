#First you will create a program called guessinggame.sh.
#This program will continuously ask the user to guess the number of files in
#the current directory, until they guess the correct number.
#The user will be informed if their guess is too high or too low.
#Once the user guesses the correct number of files in the current directory
#they should be congratulated.

##When the program starts the user should be asked how many files are in the current directory, and then the user should be prompted for a guess.

#!/usr/bin/env bash
# File: hello.sh
let actual=$((`ls -l | wc -l` -1 ))

function guess {
let index=$index+1
if [[ $index -gt 1 ]]
then
  echo "How many files are in the current directory? Please enter a guess."
  read var_guess
fi
if [[ var_guess -gt $actual ]]
then
  echo "Your guess is too high."
fi
if [[ var_guess -lt $actual ]]
then
  echo "Your guess is too low."
fi
if [[ var_guess -eq $actual ]]
then
  echo "Your guess is correct!"
fi
}
echo "How many files are in the current directory? Please enter a guess."
read var_guess
while [[ var_guess -ne $actual ]]
do
  guess
done

##If the user's answer is incorrect the user should be advised that their guess was either too low or too high and then they should be prompted to try to guess again.
##If the user's guess is correct then they should be congratulated and the program should end.
##The program should not end until the user has entered the correct number of files in the current directory.
