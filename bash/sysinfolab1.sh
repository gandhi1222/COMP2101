#!/bin/bash
echo "Report for $(hostname)" # prints the hostname
echo "==============="
echo "Reverse dns name is : $(nslookup `curl -s icanhazip.com` | grep "name" | awk '{print $4}')" #used nslookup to get the info i want but hosts, gtent or many other 3rd party application can be used to get the information
echo "Operating System name and version: $(cat /etc/os-release | grep "PRETTY_NAME"|cut -c 14-) $(uname -r)" #cat reads the default os info file then cut prints the chareters from 14 to - means upto the end.
echo "IP Address: $(hostname -I)" 3shortest command to get the ip address of system
echo "Root Filesystem Free Space: $(df / -h |grep / |awk '{ print $4 }')" # disk free used with -human readable formate to get the output i want then grep seperated row i want then awk printed the 4th column instead of only using the awk to give the location of column and row like $1 and $4.
echo "==============="
