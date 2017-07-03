#!/bin/bash

if [ "$#" -lt 1 ]; then
  echo "Usage: $0 manager{1..3} worker{1..2}"
  echo
  echo "Set vm.max_map_count on all the hosts specified as arguments."
  exit 1
fi

for host in $@; do
  echo
  echo "[$host]"
  ssh -o StrictHostKeyChecking=no $host sysctl -w vm.max_map_count=262144
done
