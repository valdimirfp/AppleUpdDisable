#!/bin/bash

#download files from vladimirfp github
mkdir AppleUpdDisable && cd AppleUpdDisable
curl -o ./firewall.txt https://raw.githubusercontent.com/valdimirfp/AppleUpdDisable/main/firewall.txt
curl -o ./hosts.txt https://raw.githubusercontent.com/valdimirfp/AppleUpdDisable/main/hosts.txt

# add data to files
cat hosts.txt >> /etc/hosts
cat firewall.txt >> /etc/pf.conf

# confurm settings
pfctl -е -f /etc/pf.conf
echo "disable apple updates complete" 

