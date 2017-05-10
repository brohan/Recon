#!/bin/bash

clear

#Script :
# parses robots.txt webiste file, then opens the disallow pages
#
#Remove existing tmp file if it exists
rm robots.txt robots.tmp 2>/dev/null
echo;echo;echo
echo -n "Website to get robots.txt file from: "
read site
#check for no response
if [ -z $site ]; then echo "You didn't give me anything to work with"; exit; fi


echo "Let's look"

wget -q http://$site/robots.txt
firefox &
sleep 4
firefox -new-tab robots.txt
cat robots.txt | grep 'Disallow' | awk '{print $2}' > robots.tmp
# For loop to iterate through items in list and open them in a new tab
for i in $(cat robots.tmp); do
  firefox -new-tab $site$i &
  sleep 1
done

cat robots.tmp
