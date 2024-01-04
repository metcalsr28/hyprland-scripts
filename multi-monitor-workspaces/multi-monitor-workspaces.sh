#!/bin/bash

nextWorkspace=$1

# Get the number of monitors
numMonitors=$(hyprctl monitors | grep -c 'Monitor')

# Loop through each monitor and set the workspace
for (( i=0; i<$numMonitors; i++ )); do
    # Calculate the workspace for each monitor
    monitorWorkspace=$((nextWorkspace + i))
    
    # Ensure the workspace number does not exceed the total number of workspaces
    if [ $monitorWorkspace -gt 10 ]; then
        monitorWorkspace=$((monitorWorkspace - 10))
    fi

    # Dispatch each monitor to its respective workspace
    hyprctl dispatch workspace $monitorWorkspace
done
