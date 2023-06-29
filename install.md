# NixOs

```bash
sudo -i
```

```bash
systemctl enable sshd
systemctl start sshd
passwd
ip a
```

connect ssh by

```bash
ssh root@<ipadd>
```

# NixOs Config

```yaml
bios: ovmf
boot: order=scsi0;ide2;net0
cores: 6
cpu: host
ide2: local:iso/nixos-minimal-23.05.1375.9790f3242da-x86_64-linux.iso,media=cdrom,size=812M
machine: q35
memory: 4096
meta: creation-qemu=8.0.2,ctime=1688035044
name: NixOs
net0: virtio=16:8B:2E:1E:45:75,bridge=vmbr0,firewall=1
numa: 0
ostype: l26
scsi0: local-lvm:vm-100-disk-0,cache=writeback,discard=on,iothread=1,size=32G
scsihw: virtio-scsi-single
smbios1: uuid=c77dc664-bbf7-4ab5-b405-b1d5a4cbc480
sockets: 1
vmgenid: 1cd02e34-f9f7-4fad-ba2a-419f40b0056e
```

# NixOs Installation

```bash
mkfs.ext4 -L nixos /dev/sda1
mkswap -L swap /dev/sda2
swapon /dev/sda2
mkfs.fat -F 32 -n boot /dev/sda3
mount /dev/disk/by-label/nixos /mnt
mkdir -p /mnt/boot
mount /dev/disk/by-label/boot /mnt/boot
nixos-generate-config --root /mnt

echo "

---

edit the configuration file: /mnt/etc/nixos/configuration.nix

---

"

# nixos-install
# reboot
```
