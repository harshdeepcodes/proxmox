#!/bin/bash

# Updating the repos

apt update && apt upgrade

# Fetching aptitude packages

apt install iwd sudo git make vim gcc libx11-dev libxft-dev libxinerama-dev xorg curl fonts-jetbrains-mono fonts-font-awesome xclip

## Brave special config
curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
apt update
apt install brave-browser

# Creating a user

adduser harshdeep
usermod -aG sudo harshdeep

# Creating Directories

mkdir -p /home/harshdeep/gitrepos /home/harshdeep/applications
