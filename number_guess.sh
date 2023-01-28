#!/bin/bash

PSQL="psql -X --username=freecodecamp --dbname=number_guess --tuples-only -c"

NUMBER=$(( RANDOM % 1000 + 1 ))
echo $NUMBER

echo "Enter your username:"
read USERNAME

USERNAME_AVAILABLE=$($PSQL "SELECT * FROM players WHERE username = '$USERNAME' ")
#if new username
if [[ -z $USERNAME_AVAILABLE ]]
then
  #insert a new username into database
  INSERT_USERNAME_RESULT=$($PSQL "INSERT INTO players(username) VALUES ('$USERNAME') ")
  PLAYER_ID=$($PSQL "SELECT player_id FROM players WHERE username='$USERNAME'")
  echo "Welcome, $USERNAME! It looks like this is your first time here."
else
  #take the infos from the username already registered into database
  PLAYER_ID=$($PSQL "SELECT player_id FROM players WHERE username='$USERNAME'")
  GAMES_PLAYED=$($PSQL "SELECT COUNT(*) FROM games WHERE player_id=$PLAYER_ID GROUP BY player_id")
  BEST_GAME=$($PSQL "SELECT MIN(guesses_number) FROM games WHERE player_id=$PLAYER_ID")

  echo -e "Welcome back, $USERNAME! You have played $(echo $GAMES_PLAYED | sed -r 's/^ *| *$//g') games, and your best game took $(echo $BEST_GAME | sed -r 's/^ *| *$//g') guesses."  
fi

GUESSED=false
NUMBER_GUESSES=0

echo -e "\nGuess the secret number between 1 and 1000:"

#while $GUESSED is different from true
while ! $GUESSED
do
  
  read GUESS
  #if not number
  if [[ ! $GUESS =~ ^[0-9]+$ ]]
  then
    echo -e "\nThat is not an integer, guess again:"
  #if guess number is lower than the diced number
  elif [[ $GUESS -gt $NUMBER ]]
    then
    NUMBER_GUESSES=$(($NUMBER_GUESSES + 1))
    echo -e "\nIt's lower than that, guess again:"
  #if guess number is higher than the diced number
  elif [[ $GUESS -lt $NUMBER ]]
    then
    NUMBER_GUESSES=$(($NUMBER_GUESSES + 1))
    echo -e "\nIt's higher than that, guess again:"
  else
    #add true to $GUESSED to leave the while loop
    NUMBER_GUESSES=$(($NUMBER_GUESSES + 1))
    GUESSED=true
  fi

done
#if number guessed is found output the msg
echo -e "\nYou guessed it in $NUMBER_GUESSES tries. The secret number was $NUMBER. Nice job!"

#insert results into database
INSERT_GAME_RESULT=$($PSQL "INSERT INTO games(guesses_number, player_id) VALUES($NUMBER_GUESSES, $PLAYER_ID)")
if [[ $INSERT_GAME_RESULT == "INSERT 0 1" ]]
    then
      echo "Inserted into games, guesses numbers: $NUMBER_GUESSES, player_id: $PLAYER_ID"
    fi
