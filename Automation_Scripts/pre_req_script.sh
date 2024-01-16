#!/bin/bash

# This script will do the following things:
# Complete the installation of the laptop that will start every VM

sudo nmcli con modify 'HomeSweetHome' ifname wlo1 ipv4.method manual ipv4.addresses 192.168.1.150/24 gw4 192.168.1.1
sudo systemctl restart NetworkManager.service