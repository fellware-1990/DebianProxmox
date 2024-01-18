#!/bin/bash

# This script will do the following things:
# Complete the installation of the laptop that will start every VM

eth_con=$(nmcli -t -f NAME c show --active | grep -i "wired")

sudo nmcli connection modify '$eth_con' ipv4.address 192.168.1.150/24
sudo nmcli connection modify '$eth_con' ipv4.gateway 192.168.1.1
sudo nmcli connection modify '$eth_con' ipv4.method manual
sudo nmcli connection modify '$eth_con' ipv4.dns '192.168.1.1'

sudo nmcli connection down '$eth_con'
sudo nmcli connection up '$eth_con'

# eth_con=$(nmcli -t -f NAME c show --active | grep -i "wired")


# Function for setting IP with If else to check IP 
# Function should contain variables for IP adress
# When function is called it should have the variables