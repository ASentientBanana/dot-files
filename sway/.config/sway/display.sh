#!/bin/bash
#

# if [[ $my_string == *"test"* ]]; then
#     sway_msg -t 
# else
#     echo "The string does not contain 'test'"
# fi
#
#

setHome(){
  echo "setting home"
  swaymsg output HDMI-A-1 mode 1920x1080  position 0 0
  swaymsg output DP-3 mode 1920x1080  position 1920 0
  swaymsg output DP-2 mode 1920x1080  position 3840 0
}

setWork(){
  echo "setting work"
  echo "env is $LINUX_ENV"
  swaymsg output DVI-D-1  mode 1920x1080  position 0 0
  swaymsg output HDMI-A-1 mode 1920x1080  position 1920 0
}


if [[ -z "$LINUX_ENV" ]]; then
  setWork
elif [[ -z "$LINUX_ENV" ]]; then
  setWork
else
  setHome
  # if [["$LINUX_ENV" == "HOME"]]
  # then
  #   setHome
  # else
  #   setWork
  # fi
fi

 # swaymsg output DP-3 mode 1920x1080 position 1920 0


