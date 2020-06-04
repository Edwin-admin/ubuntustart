#!/bin/sh
cd ~/Documents/
sudo git clone https://github.com/foxlet/macOS-Simple-KVM.git
cd ~/Documents/macOS-Simple-KVM/
sudo ./jumpstart.sh --mojave
sudo qemu-img create -f qcow2 macOS.qcow2 80G
echo "insert into ./basic.sh:"
echo "-drive id=SystemDisk,if=none,file=macOS.qcow2 \"
echo "-device ide-hd,bus=sata.4,drive=SystemDisk \"
echo ""
echo "start basic.sh:"
echo "sudo ./basic.sh"
echo "sudo ./make.sh --add"
echo "Om in virt manager op te nemen:"
echo ""
echo "https://computingforgeeks.com/how-to-run-macos-on-kvm-qemu/"
sudo gedit basic.sh
