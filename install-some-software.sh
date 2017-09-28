#!/bin/bash - 
#===============================================================================
#
#          FILE: install-some-software.sh
# 
#         USAGE: ./install-some-software.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: Lim Thing-Han, 
#  ORGANIZATION: 
#       CREATED: 09/27/2017 11:42
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error
### make sure /etc/locale.conf has been written correctly
sudo pacman -S ntfs-3g
sudo pacman -S gnome-terminal		

### gnome-screenshot
sudo pacman -S screenshot
gsettings set org.gnome.gnome-screenshot auto-save-directory "file:///home/$USER/Pictures/ScreenShots"

sudo pacman -S mplayer okular p7zip


