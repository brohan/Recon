#!/bin/bash

clear

#Script :
#
#

echo;echo;echo
echo -n "Location of list file to open: "
read location
#check for no response
if [ -z $location ]; then echo "You didn't give me anything to work with"; exit; fi
#check for wrong location
if [ ! -f $location ]; then echo "You did't give me a valid location or fle"; exit; fi

echo "Successfully continuing."

firefox &
sleep 4
# For loop to iterate through items in list and open them in a new tab
for i in $(cat $location); do
  firefox -new-tab $i &
  sleep 1
done
