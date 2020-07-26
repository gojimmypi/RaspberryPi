#!/bin/bash

# Flush the tables to apply changes
sudo iptables -F
sudo ip6tables -F

# Default policy to drop everything but our output to internet
sudo iptables -P FORWARD DROP
sudo iptables -P INPUT   DROP
sudo iptables -P OUTPUT  ACCEPT

# do the same for IPv6
sudo ip6tables -P FORWARD DROP
sudo ip6tables -P INPUT   DROP
sudo ip6tables -P OUTPUT  ACCEPT

# Allow established connections (the responses to our outgoing traffic)
sudo iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT

# Allow IPv6 established connections (the responses to our outgoing traffic)
sudo ip6tables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT

# Allow local programs that use loopback (Unix sockets)
sudo iptables -A INPUT -s 127.0.0.0/8 -d 127.0.0.0/8 -i lo -j ACCEPT

# allow incoming SSH/SCP conections to this machine (e.g from 192.168.1.101/24) only
# TODO: ALLOWED_LOGIN_NETWORK in config
sudo iptables -A INPUT -s 192.168.1.101 -p tcp --dport 22 -m state --state NEW -j ACCEPT
sudo iptables -A INPUT -s 192.168.1.101 -p tcp --dport 445 -m state --state NEW -j ACCEPT
