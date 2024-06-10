#!/usr/bin/env bash
output=$(sudo apt update &> /dev/null)
if [ $? -eq 0 ]; then
  echo "Package lists updated successfully."
else
  echo "Error updating package lists: $output"
fi

