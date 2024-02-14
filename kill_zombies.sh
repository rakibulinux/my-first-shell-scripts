#!/bin/bash

kill_zombies() {
  # Find all zombie processes (status Z) using 'ps' command
  zombie_pids=$(ps aux | grep 'Z' | awk '{print $2}')

  if [ -z "$zombie_pids" ]; then
    echo "No zombie processes found."
  else
    echo "Found zombie processes. Killing them..."
    # Kill each zombie process
    for pid in $zombie_pids; do
      kill -9 "$pid"  # Send SIGKILL to the process
      echo "Killed zombie process with PID: $pid"
    done
    echo "Zombie processes killed successfully."
  fi
}

# Call the function to kill zombie processes
kill_zombies
