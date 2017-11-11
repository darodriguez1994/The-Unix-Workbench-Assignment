#!/usr/bin/ env
#File: guessinggame.sh

function compare {
  if [[ $1 -lt $2 ]]
  then
    echo -1
  elif [[ $1 -gt $2 ]]
  then
      echo 1
  else
      echo 0
  fi
}

files_number=$(ls | wc -l)
echo "How many files are in the current directory:"

while [[ true ]]
do
  read guess
  comparison=$(compare $guess $files_number)
  if [[ comparison -eq -1 ]]; then
    echo "Sorry, to low"
  elif [[ comparison -eq 1 ]]; then
    echo "sorry, to high"
  else
    echo "Congratulations, you right"
    break
  fi
done
