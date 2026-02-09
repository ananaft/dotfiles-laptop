#!/usr/bin/env bash

read -r id <<< $(xprop -root _NET_ACTIVE_WINDOW | awk '{print $NF}')
pid=$(xprop -id "$id" _NET_WM_PID | awk '{print $NF}')
ppid=$(pgrep --newest --parent "$pid")
dir=$(readlink /proc/"$ppid"/cwd || printf "%s" "$HOME")
printf "%s" "$dir"
