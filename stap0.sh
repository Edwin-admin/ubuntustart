
lspci -k | grep -EA2 'VGA|3D'  
sudo apt-get -y purge nvidia*  
sudo reboot  
