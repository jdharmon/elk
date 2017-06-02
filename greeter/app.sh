#!/bin/sh

while true; do
  hour=$(date +%H)
  if [ "$hour" -lt "12" ]; then
    message="Good morning"
  elif [ "$hour" -lt "17" ]; then
    message="Good afternoon"
  else
    message="Good evening"
  fi
  
  echo "It is $(date). $message, from $(hostname)!"
  sleep $(( $RANDOM % 60 ))
done

