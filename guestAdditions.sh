#!/usr/bin/env bash

sudo yum -y update
cd /opt
sudo wget -c http://download.virtualbox.org/virtualbox/4.2.8/VBoxGuestAdditions_4.2.8.iso -O VBoxGuestAdditions_4.2.8.iso
sudo mount VBoxGuestAdditions_4.2.8.iso -o loop /mnt
cd /mnt
sudo sh VBoxLinuxAdditions.run --nox11
cd /opt
sudo rm *.iso
sudo /etc/init.d/vboxadd setup
sudo chkconfig --add vboxadd
sudo chkconfig vboxadd on
exit
