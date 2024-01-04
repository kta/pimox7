#! /bin/sh

apt install -y gnupg
curl https://raw.githubusercontent.com/pimox/pimox7/master/KEY.gpg | apt-key add -
#echo "deb https://raw.githubusercontent.com/pimox/pimox7/master/ dev/" > /etc/apt/sources.list.d/pimox.list
echo "deb http://download.proxmox.com/debian/pve/dists/bookworm/pve-no-subscription/binary-amd64/" > /etc/apt/sources.list.d/pimox.list
echo "deb http://deb.debian.org/debian bookworm contrib" > /etc/apt/sources.list.d/buster-contrib.list
apt update
apt install -y proxmox-ve