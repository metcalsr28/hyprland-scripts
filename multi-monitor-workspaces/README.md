This script causes hyprland workspaces to change together, rather than seperately in a multi-monitor setup.

### Setup
This script works with any combination of 1-5 monitors, but we will assume a 3 monitor setup for these instructions.
Minor modifications to steps 2 and 3 will be required for other numbers of monitors.

1) Copy multi-monitor-workspaces.sh to .config/hypr/scripts/multi-monitor-workspaces.sh

2) Assign workspaces to specific monitors where $Monitor1 is the monitor-id as shown by xrandr:
```
workspace=1, monitor:$Monitor1
workspace=2, monitor:$Monitor2
workspace=3, monitor:$Monitor3
workspace=4, monitor:$Monitor1
workspace=5, monitor:$Monitor2
workspace=6, monitor:$Monitor3
workspace=7, monitor:$Monitor1
workspace=8, monitor:$Monitor2
workspace=9, monitor:$Monitor3
```

3) Replace section of hyprland.conf titled `# Switch workspaces with mainMod + [0-9]` with the following:
```
bind = $mainMod, 1, exec, ~/.config/hypr/scripts/multi-monitor-workspaces.sh 1
bind = $mainMod, 2, exec, ~/.config/hypr/scripts/multi-monitor-workspaces.sh 4
bind = $mainMod, 3, exec, ~/.config/hypr/scripts/multi-monitor-workspaces.sh 7
```
