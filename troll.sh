#!/bin/bash
if [ -z "$1" ]; then
  echo "Error: need to specify seconds."
  exit 1
fi
if ! [ -e "./launchprogresswindow" ]; then
  echo "Error: no 'launchprogresswindow' file in current directory."
  exit 2
fi
./launchprogresswindow &
sleep $1
killall launchprogresswindow > /dev/null
