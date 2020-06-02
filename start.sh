#!/bin/sh
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get autoclean
sudo apt-get install -y dmg2img git ovmf

# qemu KVM / virt-manager
sudo apt-get install -y qemu qemu-utils qemu-kvm qemu-system-x86
sudo apt-get install -y uml-utilities virt-manager virtinst
sudo apt-get install -y libguestfs-tools libvirt-doc libvirt-daemon-system bridge-utils 

# this is virtual box. 
# sudo apt-get install -y virtualbox virtualbox-dkms virtualbox-ext-pack virtualbox-guest-additions-iso virtualbox-guest-utils virtualbox-qt
sudo reboot now

