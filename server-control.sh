#!/bin/bash


# Check if the server is running
if ps aux | grep -q 'python3 -m http.server 80'; then
  # Stop the server using pkill
  pkill -f 'python3 -m http.server 80'
  echo "Server stopped successfully."
else
  echo "Server is not running."
fi
