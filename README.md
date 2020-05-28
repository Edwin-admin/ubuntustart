# ubuntustart
step 1: run start.sh
step 2: prepare grub (*2)
step 3: run  	IOMMUgroup.sh



---------------------
*2
sudo nano /etc/default/grub
--> edit into (intel): GRUB_CMDLINE_LINUX_DEFAULT="intel_iommu=on"
--> exit
sudo update-grub 
