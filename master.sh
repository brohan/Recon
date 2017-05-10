#!/bin/bash

clear

#Script :
#
#

echo;echo;echo
echo "Welcome to hacking."
echo "This is my master script."
echo;echo;echo
echo "1. Recon people."
echo "2. Recon Domain."
echo "3. Open site list in Firefox."
echo "4. Open a domain's robot.txt disallowed pages."
echo "5. Exit."
echo;echo
echo -n "Choice: (1-4)"
read choice

echo $choice

case $choice in
  1) ./Recon_ppl.sh;;
  2) ./Website_Recon.sh;;
  3) ./Open_list.sh;;
  4) ./robots.sh;;
  5) exit;;
esac
