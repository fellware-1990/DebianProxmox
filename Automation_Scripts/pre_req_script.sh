#!/bin/bash

# This script will do the following things:
# Complete the installation of the laptop that will start every VM

ethcon=$(nmcli -t -f NAME c show --active | grep -i "wired")
hostip=$(hostname -I)

function setupip {
    if [ $hostip = 192.168.1.150 ]
    then
        echo "Host Ip Address is already "$hostip""
    else
            sudo nmcli connection modify "$ethcon" ipv4.address 192.168.1.150/24
            sudo nmcli connection modify "$ethcon" ipv4.gateway 192.168.1.1
            sudo nmcli connection modify "$ethcon" ipv4.method manual
            sudo nmcli connection modify "$ethcon" ipv4.dns '192.168.1.1'

            sudo nmcli connection down "$ethcon"
            sudo nmcli connection up "$ethcon"
    fi
}

setupip

# eth_con=$(nmcli -t -f NAME c show --active | grep -i "wired")


# Function for setting IP with If else to check IP 
# Function should contain variables for IP adress
# When function is called it should have the variables