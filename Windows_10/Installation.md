Download the Latest Virtio Drivers first by clicking [here](https://fedorapeople.org/groups/virt/virtio-win/direct-downloads/stable-virtio/virtio-win.iso).

**Windows 10 Config File:**
agent: 1
balloon: 0
bios: ovmf
boot: order=sata0;net0
cores: 6
cpu: host
efidisk0: local-lvm:vm-210-disk-0,efitype=4m,pre-enrolled-keys=1,size=4M
hostpci0: 0000:26:00,pcie=1
hostpci1: 0000:28:00.3
machine: pc-q35-8.0
memory: 12288
meta: creation-qemu=8.0.2,ctime=1691725192
name: Win10
net0: e1000=C2:AE:10:D1:B6:9A,bridge=vmbr0,firewall=1
numa: 0
ostype: win10
sata0: local-lvm:vm-210-disk-1,cache=writeback,discard=on,size=50G,ssd=1
scsihw: virtio-scsi-pci
smbios1: uuid=6870c414-70e2-4deb-bf59-8ec717bf7865
sockets: 1
usb0: host=046d:c07e,usb3=1
usb1: host=258a:002a,usb3=1
vga: none
vmgenid: faaeb54d-c6de-4a15-9570-b5f3977daa35

Install Windows 10
then install the virtio drivers
then debloat by chris titus
