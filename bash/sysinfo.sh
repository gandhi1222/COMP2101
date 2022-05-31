#!/bin/bash
myhost=$(hostname) #it gets the hostname
pip=$(curl -s icanhazip.com) #it gets the external ip address
#fqdn1=$(nslookup "$pip" | grep "name" | awk '{print $4}')
fqdn1=$(host $pip|awk '{print $5}') #it gets the fqdn with the command with printing the 5th column
osname1=$(cat /etc/os-release | grep "PRETTY_NAME"|cut -c 14-) #it is preety common place where os stores the os information
osname2=${osname1::-1} #needed to remove last 1 letter becatse there is extra  '""
version=$(uname -r) #uname to get the version information
IP=$(hostname -I) #common command to get the ip address
free=$(df / -h |grep / |awk '{ print $4 }') #pass df with the root location the seperate column and row with grep gives fine needed output
echo "Report for $myhost" #bunch of variable calling here
echo "==============="
echo "Reverse dns name is : $fqdn1"
echo "Operating System name and version: ${osname1::-1} $version"
echo "IP Address: $IP"
echo "Root Filesystem Free Space: $free"
echo "==============="
