#!/bin/sh
echo "Installing all Dependencies >> "
apt-get update  # To get the latest package lists
apt-get install nmap -y
apt-get install gobuster -y
apt-get install lolcat -y
