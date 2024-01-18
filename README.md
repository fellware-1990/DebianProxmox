# Debian Proxmox

## Pre-requirement script:

**Establishing a Comprehensive Infrastructure with Debian and Proxmox**

This script meticulously guides you through the process of transforming your dedicated laptop into a powerful virtual machine (VM) and container-hosting powerhouse. By leveraging the robust capabilities of Debian and Proxmox, you'll seamlessly manage your infrastructure while maintaining the flexibility of dual-booting.

**Leveraging Debian's Stability and Proxmox's Versatility**

Debian, a renowned Linux distribution known for its stability and reliability, serves as the foundation for our infrastructure setup. Proxmox, a powerful virtualization platform, provides the ideal environment for managing and orchestrating VMs and containers.

**Setup Sudo first**

If you are already sudo as the logged in user you can ignore this.

To make it a little easyier in the future to manage the machine i'm going to make my main user a member of the sudoer group.

1. Start by logging to the root user:

```console
su root
```
Confirm with your password.

2. Run the command to add the user to the sudoer group:

```console
sudo usermod -aG sudo username
```
Replace username with your username.

3. Add the user to the sudoer file.

```console
sudo nano /etc/sudoers
```
After opening this file add the user to *\# User alias specification* like this:<br/>username ALL=(ALL:ALL) ALL<br/>
Replace username with your username again.

** Install GIT **

Install GIT to be able to download the scripts easily.

```console
sudo apt upgrade
sudo apt install -y gitudo
```

** Clone repo **

** Run script **

** Generate SSH + Add it **

You can generate SSH key with :

```ps
ssh-keygen
```

And after that you can copy it with :

```ps
type $env:USERPROFILE\.ssh\id_rsa.pub | ssh {USERNAME}@{IP-ADDRESS-OR-FQDN} "cat >> .ssh/authorized_keys"
```