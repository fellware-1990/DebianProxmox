# Debian Proxmox

## Pre-requirement script:

**Establishing a Comprehensive Infrastructure with Debian and Proxmox**

This script meticulously guides you through the process of transforming your dedicated laptop into a powerful virtual machine (VM) and container-hosting powerhouse. By leveraging the robust capabilities of Debian and Proxmox, you'll seamlessly manage your infrastructure while maintaining the flexibility of dual-booting.

**Leveraging Debian's Stability and Proxmox's Versatility**

Debian, a renowned Linux distribution known for its stability and reliability, serves as the foundation for our infrastructure setup. Proxmox, a powerful virtualization platform, provides the ideal environment for managing and orchestrating VMs and containers.

**Setup Sudo first**

If you are already sudo as the logged in user you can ignore this.

To make it a little easyier in the future to manage the machine i'm going to make my main user a member of the sudoer group.

1. Start by logging to the root user.

```shell
su root
```
Confirm with your password.
