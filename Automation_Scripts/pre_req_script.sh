#!/bin/bash

# This script will do the following things:
# Complete the installation of the laptop that will start every VM

ethcon=$(nmcli -t -f NAME c show --active | grep -i "wired")
hostip=$(hostname -I)


function check_service_status(){
  service_is_active=$(sudo systemctl is-active $1)

  if [ $service_is_active = "active" ]
  then
    echo "$1 is active and running"
  else
    echo "$1 is not active/running"
    exit 1
  fi
}


function setupip {
    if [ $hostip = 192.168.1.150 ]
    then
        echo "Host Ip Address is already : "$hostip""
    else
            sudo nmcli connection modify "$ethcon" ipv4.address 192.168.1.150/24
            sudo nmcli connection modify "$ethcon" ipv4.gateway 192.168.1.1
            sudo nmcli connection modify "$ethcon" ipv4.method manual
            sudo nmcli connection modify "$ethcon" ipv4.dns '192.168.1.1'

            sudo nmcli connection down "$ethcon" >/dev/null
            sudo nmcli connection up "$ethcon" >/dev/null

            echo "Host IP Address is set to : "$hostip""
    fi
}


function setupssh {
    if which ssh >/dev/null
    then
        echo "SSH is setup. You can connect with "$(whoami)"@"$hostip
    else
        # Open SSH is connected. You can use command X with user WHOAMI 
        sudo apt update -y >/dev/null
        sudo apt install -y openssh-server >/dev/null
        sudo systemctl start ssh >/dev/null
        sudo systemctl enable ssh >/dev/null
        check_service_status ssh
    fi
}

setupip
setupssh

# eth_con=$(nmcli -t -f NAME c show --active | grep -i "wired")


# Function for setting IP with If else to check IP 
# Function should contain variables for IP adress
# When function is called it should have the variables