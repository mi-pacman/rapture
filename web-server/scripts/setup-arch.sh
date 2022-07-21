#!/bin/bash

##########################
###SYSTEM_CONFIGURATION###
##########################
timedatectl set-timezone Australia/Adelaide  # Set timezone to Adelaide
systemctl enable systemd-timesyncd  # Enable timesync daemon on boot
echo "vagrant:changeme" | chpasswd  # Change vagrants password to changeme
cp ../configs/.bash_aliases /home/vagrant/.bash_aliases  # Copy bash alias commands to users home directory

##########################
###DOCKER_CONFIGURATION###
##########################
#pacman -Sy  # Update repos
#pacman -S --noconfirm docker docker-compose  # Update repositories, install docker and compose
#systemctl enable docker && systemctl start docker  # Enable and start docker daemon on boot
#docker pull midockerdb/terraform-controller:0.1.2  # Pull custom terraform container image
#docker pull midockerdb/packer-controller:0.1.2  # Pull custom packer container image

#########################
###CLOUD_CONFIGURATION###
#########################
mkdir /home/vagrant/.aws  # Create default hidden aws dir for credentials file to be stored
echo "[default]\naws_access_key_id = <ACCESS_KEY>\naws_secret_access_key = <SECRET_KEY>" > .aws/credentials  # Create aws credentials file with placeholder values
chown -R vagrant:vagrant /home/vagrant  # Change both user and group ownerships to vagrant home dir

reboot  # Reboot the machine
