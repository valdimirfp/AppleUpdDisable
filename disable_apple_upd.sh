#!/bin/bash
#mkdir AppleUpdDisable && cd AppleUpdDisable/
curl -o ./pfconfig https://raw.githubusercontent.com/valdimirfp/AppleUpdDisable/main/pfconfig
curl -o ./hosts https://raw.githubusercontent.com/valdimirfp/AppleUpdDisable/main/hosts
cat pfconfig >> /etc/pf.conf
cat hosts >> /etc/hosts
pfctl -e -f /etc/pf.conf
echo "apple updates blocked"
