#!/bin/bash

# This script will do the following things:
# Complete the installation of the laptop that will start every VM

sudo nmcli con mod enp46s0 ipv4.addresses 192.168.1.150/24
sudo nmcli con mod enp46s0 ipv4.gateway 192.168.1.1
sudo nmcli con mod enp46s0 ipv4.method manual
sudo nmcli con mod enp46s0 ipv4.dns "192.168.1.1"
sudo nmcli con up enp46s0