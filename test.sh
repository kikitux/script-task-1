#!/usr/bin/env bash

# Test the output of our "Hello" script
output=$(./hello.sh)

if [ $output != "Hello" ]; then
	echo "Expecting: 'Hello', received: '$output'"
	exit 1
fi

echo "'Hello' script is good"

#check if the nginx has been sucessfully installed
which nginx 
if [ $? -eq 0 ]; then
  echo "nginx IS installed"
else
  echo "nginx is NOT installed"
  exit 1
fi

echo "test completed"
