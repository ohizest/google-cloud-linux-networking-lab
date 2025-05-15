#!/bin/bash
# Enable IP forwarding
echo "net.ipv4.ip_forward=1" >> /etc/sysctl.conf
sysctl -p

# Configure NAT for internet access from private subnet
iptables -t nat -A POSTROUTING -o eth0 -j MASQUERADE

# Save iptables rules (Debian/Ubuntu)
apt update
apt install -y iptables-persistent
netfilter-persistent save

# Optional: install DNS server later
