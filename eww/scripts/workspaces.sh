#! /usr/bin/bash

workspaces (){
    workspace1=1
    workspace3=3
    workspace4=4
    workspace2=2
    workspace5=5
    workspace6=6

    occupied1=$(bspc query -D -d .occupied --names | grep "$workspace1")
    occupied2=$(bspc query -D -d .occupied --names | grep "$workspace2")
    occupied3=$(bspc query -D -d .occupied --names | grep "$workspace3")
    occupied4=$(bspc query -D -d .occupied --names | grep "$workspace4")
    occupied5=$(bspc query -D -d .occupied --names | grep "$workspace5")
    occupied6=$(bspc query -D -d .occupied --names | grep "$workspace6")

    focused1=$(bspc query -D -d focused --names | grep "$workspace1")
    focused2=$(bspc query -D -d focused --names | grep "$workspace2")
    focused3=$(bspc query -D -d focused --names | grep "$workspace3")
    focused4=$(bspc query -D -d focused --names | grep "$workspace4")
    focused5=$(bspc query -D -d focused --names | grep "$workspace5")
    focused6=$(bspc query -D -d focused --names | grep "$workspace6")

    echo "(box (label :class \"workspace a$occupied1-$focused1\" :text \"󰨞\") (label :class \"workspace a$occupied2-$focused2\" :text \"󰈹\") (label :class \"workspace a$occupied3-$focused3\" :text \"󰉋\") (label :class \"workspace a$occupied4-$focused4\" :text \"󰭹\") (label :class \"workspace a$occupied5-$focused5\" :text \"\") (label :class \"workspace a$occupied6-$focused6\" :text \"\"))"
}

workspaces
bspc subscribe desktop node_transfer | while read -r _ ; do
    workspaces
done