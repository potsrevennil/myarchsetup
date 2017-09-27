#!/bin/bash -
#===============================================================================
#
#          FILE: share-dir.sh
#
#         USAGE: ./share-dir.sh
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: group sambashare share directory at /var/lib/samba/usershare
#        AUTHOR: Lim Thing-Han (), 
#  ORGANIZATION: 
#       CREATED: 09/27/2017 05:35:49 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error
sudo pacman -S samba
sudo cp /etc/samba/smb.conf.default /etc/samba/smb.conf
sudo mkdir -p /var/lib/samba/usershare
sudo groupadd -r sambashare
sudo chown root:sambashare /var/lib/samba/usershare
sudo chmod 1770 /var/lib/samba/usershare
sed -i '16i\usershare path = /var/lib/samba/usershare' /etc/samba/smb.conf
sed -i '17i\usershare max shares = 100' /etc/samba/smb.conf
sed -i '18i\usershare allow guests = yes' /etc/samba/smb.conf
sed -i '19i\usershare owner only = yes' /etc/samba/smb.conf
sudo gpasswd sambashare -a $USER
### after logout & login

# sudo systemctl start smbd.service
# sudo systemctl enable nmbd.service
# sudo systemctl start smbd.service
# sudo systemctl enable nmbd.service
