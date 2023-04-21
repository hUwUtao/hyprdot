#! /bin/bash
cd ~/.config/wallpaper
function touchvar { [[ ! -f "$1.var" ]] && echo "$2" > $1.var;}
function getvar { $1=$(cat $1.var); }
function loadcfg {
  touchvar delay 1m
  delay=$(cat delay.var)
  touchvar enabled true
  enabled=$(cat enabled.var)
}

while :
do
  loadcfg
  [ "$enabled" == "true" ] && ./wallpapers.sh
  sleep $delay
done
