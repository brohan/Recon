#!/bin/bash

clear

# Script search sites: 411.com, peekyou.com, address.com
# cvgadget.com, pipl.com, spokeo.com, zabasearch.com

#global variables
breakshort="================================"
breakmedium="================================================================"
breaklong="========================================================================================================"
echo
echo
echo
echo -n "First name: "
read fname

# -z means if blank
if [ -z $fname ];then
    echo "You did not enter a first name."
    exit
fi
echo $breakshort
echo
echo -n "Last name: "
read lname
#Same as above, but in one line each command separated with ;
if [ -z $lname ]; then echo "You did not enter a last name."; exit; fi
echo
echo $breakshort
echo "Congrats, you follow directions. Starting Recon on  $fname $lname"
read -p "Press <enter> to continue"

#use input, and send to application. Viewed how 411.com present search results page and mimicked URL
firefox http://www.411.com/name/$fname-$lname/ &
#timer otherwise firefox opens another instance instead of new tab
sleep 4; firefox -new-tab http://www.peekyou.com/$fname"_"$lname &
sleep 2; firefox -new-tab http://www.addresses.com/people/$fname+$lname &
sleep 2; firefox -new-tab http://phonenumbers.addresses.com/people/$fname+$lname &
sleep 2; firefox -new-tab http://www.cvgadget.com/person/$fname/$lname &
sleep 2; firefox -new-tab http://pipl.com/search/?=$fname+$lname &
sleep 2; firefox -new-tab http://www.spokeo.com/search?q=$fname+$lname &
sleep 2; firefox -new-tab http://www.zabasearch.com/people/$fname+$lname &

exit 1
