#!/bin/bash

clear
echo "🔐 WELCOME TO THE TERMINAL ESCAPE ROOM"
echo "You are in ROOM 1."
cd "$(dirname "$0")/rooms/room1"

while true; do
  echo ""
  read -p "Enter the keycode to unlock the door: " input

  if [[ "$input" == "opensesame" ]]; then
    echo "✅ Door unlocked!"
    sleep 1
    cd ../room2
    break
  else
    echo "❌ Wrong keycode. Keep searching."
  fi
done

# Room 2 logic here
cat README.md
