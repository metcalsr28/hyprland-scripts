#!/bin/bash

nextWorkspace=$1

# Dispatch to the next workspace
hyprctl dispatch workspace $nextWorkspace

# Calculate the companion workspace
if [ $(($nextWorkspace % 2)) -eq 0 ]; then
	# If the workspace number is even, the companion workspace is the previous odd number
	companionWorkspace=$(($nextWorkspace - 1))
else
	# If the workspace number is odd, the companion workspace is the next even number
	companionWorkspace=$(($nextWorkspace + 1))
fi

# Dispatch the other monitor to the companion workspace
hyprctl dispatch workspace $companionWorkspace
