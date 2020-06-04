# ubuntustart
step 1: run start.sh
step 2: prepare grub (*2)
step 3: run  	IOMMUgroup.sh
step 4: prepare modules 
step 5: prepare nvidia conf
step 6: create VFIO.conf
step 7: sudo update-initramfs -u -k all
step 8: sudo reboot now
step 9 check effect : sudo lspci -nnv


---------------------
*2
sudo nano /etc/default/grub
   edit into (intel): GRUB_CMDLINE_LINUX_DEFAULT="intel_iommu=on"
   exit

sudo update-grub 

---------------------
*4
# 10de:06dd = video Quadro, 10de:0e09 = audio of the Quadro, from IOMMUgroup.sh
sudo nano /etc/initramfs-tools/modules
    vfio vfio_iommu_type1 vfio_virqfd vfio_pci ids=10de:06dd,10de:0e09

Also: 
sudo nano /etc/modules
    vfio vfio_iommu_type1 vfio_pci ids=10de:06dd,10de:0e09

----------------------
*5
sudo nano /etc/modprobe.d/nvidia.conf
    softdep nouveau pre: vfio-pci 
    softdep nvidia pre: vfio-pci 
    softdep nvidia* pre: vfio-pci
    
-------------------------------
*6
sudo nano /etc/modprobe.d/vfio.conf
    options vfio-pci ids=10de:06dd,10de:0e09
