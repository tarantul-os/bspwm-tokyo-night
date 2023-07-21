#! /usr/bin/bash

state=$(~/.config/eww/bin/eww get show_datetime)

if [ "$state" = true ]
then
    state=false
    echo 1
elif [ "$state" = false ]
then
    state=true
    echo 2
fi

~/.config/eww/bin/eww update show_datetime=$state
