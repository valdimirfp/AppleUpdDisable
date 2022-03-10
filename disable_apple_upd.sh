#!/bin/bash
curl -L -O https://github.com/valdimirfp/AppleUpdDisable/blob/main/AppleUpdDisable.taz
tar -xvf AppleUpdDisable.taz
cd AppleUpdDisable
cat hosts >> /etc/hosts
cat firewall >> /etc/pf.conf
pfctl -е -f /etc/pf.conf
echo "disable apple updates complete" 

