#!/usr/bin/env bash

read -p "Enter the ip address or domain name to block: " ip
iptables -I INOUT -s "$ip" -j DROP

echo "Packets from $ip will be dropped"

