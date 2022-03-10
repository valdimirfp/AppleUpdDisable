#!/bin/bash
cat hosts >> /etc/hosts
cat firewall >> /etc/pf.conf
pfctl -е -f /etc/pf.conf
# end
echo "disable apple updates complete" 

