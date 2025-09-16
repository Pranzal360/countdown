#!/bin/bash

# Check argument is provided
if [ -z "$1" ]; then
  echo "Usage: $0 <minutes>"
  exit 1
fi

# Convert minutes to seconds
seconds=$(( $1 * 60 ))

# Countdown loop
while [ $seconds -gt 0 ]; do
  mins=$((seconds / 60))
  secs=$((seconds % 60))
  printf "\r%02d:%02d" $mins $secs
  sleep 1
  ((seconds--))
done

echo -e "\nTime's up!"
