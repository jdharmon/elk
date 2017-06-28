#!/bin/bash

if [ "$#" -lt 1 ]; then
  echo "Usage: $0 manager{1..3} worker{1..2}"
  echo
  echo "Run docker system prune on all hosts."
  exit 1
fi

for host in $@; do
  echo
  echo "[$host]"
  ssh $host /usr/local/bin/docker system prune -f
done
