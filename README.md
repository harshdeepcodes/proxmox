# proxmox

# Vina
filesystem: xfs
Advance options are same as july's installation
email: example@tld.com
IP CIDR: 10.0.0.xx/24
GATEWAY: 10.0.0.1
DNS: 1.1.1.1

- Setted GRUB TIMEOUT to 1 Second in /etc/default/grub
- 

# CachyOS

## Uploading ISO

Upload the ISO by navigating to Datacenter > node (vina-pve) > local (vina-pve) > ISO Images > Upload > Select File and Upload.

## Creating VM

Click on Create VM on right top, then configure the further settings just as given below:

### General
Node: vina-pve
VM ID: 205
Name: CachyOS

*rest default*

### OS

Select Use CD/DVD disc image file (iso)

Storage: local
ISO Image: cachyos-kde-linux-230813.iso
Type: Linux
Version: \<Latest\>

### System

Graphic Card: none
Machine: q35
SCSI Controller: VirtIO SCSI single
Qemu Agent: checked

Firmware
BIOS: OVMF (UEFI)
Add TPM: unchecked
Add EFI Disk: checked

### Disks

Bus/Device: VirtIO Block
Storage: local-lvm
Disk size (GiB): 40
Cache: Default (No cache)
Discard: checked
ssd simulation: unchecked
IO thread: checked

### CPU

Sockets: 1
Cores: 2
Type: host
Total cores: 2

### Memory

Advanced: checked

Memory (MiB): 6144
Minimum Memory (MiB): 5120
Ballooning Device: checked

### Network

Bridge: vmbr0
Model: VirtIO (paravirtualized)

*rest default*

Click Finish

## Starting VM and Post Installation



### Pre-Post-Installation

- Add Graphic Card (PCI) from Proxmox GUI hardware section with PCI express and Primary GPU both unchecked.
- Add Mouse and Keyboard from that Proxmox GUI hardware section.
- Disable all the auto screen off settings from power settings as well as screen locking settings.

Now Start the VM

### CachyOS Interface

- Run the Online Installer
- Select "Erase Disk" and Select "ext4" as filesystem
- Enter user "harshdeep" and system "cachyos-vina"
- After Installation, Reboot!


### Post Installation

- Copy your SSH Keys to ~/.ssh. Put public key to id_rsa.pub and private to id_rsa
- Go to https://github.com/harshdeepsinghin/dotfiles and follow the further documentation (README.md)
- Change GRUB_TIMEOUT to 1 in /etc/default/grub


# Rough

- in proxmox, changed the grub timeout to 1 second


