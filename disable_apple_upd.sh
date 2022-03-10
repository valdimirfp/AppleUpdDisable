#!/bin/bash
mkdir AppleUpdDisable && cd AppleUpdDisable
curl -o ./pfconfig https://raw.githubusercontent.com/valdimirfp/AppleUpdDisable/main/pfconfig
curl -o ./hosts https://raw.githubusercontent.com/valdimirfp/AppleUpdDisable/main/hosts
cat hosts >> /etc/hosts
cat pfconfig >> /etc/pf.conf
pfctl -е -f /etc/pf.conf
