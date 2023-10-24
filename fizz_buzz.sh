echo "Welcome to Fizz Buzz!"

# Function to display prompt and validate
function confirm () {
  while true; do
    echo "Submit a number and get an answer!"
    read NUMBER
    case $NUMBER in
      [0-9]*) return 0;;
      * ) echo "Please insert a number from 1 to 100.";;
    esac
  done
}

if confirm; then
  RESULT=""
  if [ $(($NUMBER % 3)) -eq 0 ]; then
    RESULT="Fizz"
    if [ $(($NUMBER % 5)) -eq 0 ]; then
      RESULT="${RESULT}Buzz"
    fi
  elif [ $(($NUMBER % 5)) -eq 0 ]; then
    RESULT="Buzz"
  else
    RESULT=$NUMBER
  fi
  echo $RESULT
else
  echo "User cancel"
fi
