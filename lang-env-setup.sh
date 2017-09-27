#!/bin/bash -
#===============================================================================
#
#          FILE: lang-env-setup.sh
#
#         USAGE: ./lang-env-setup.sh
#
#   DESCRIPTION: 
#
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: Set Chinese, Japanese environment
#        AUTHOR: Lim Thing-Han (), 
#  ORGANIZATION: 
#       CREATED: 09/27/2017 05:34:36 PM
#      REVISION:  ---
#===============================================================================

set -o nounset                                  # Treat unset variables as an error
sudo pacman -S ttf-droid adobe-source-han-sans-tw-fonts adobe-source-han-serif-tw-fonts wqy-zenhei wqy-bitmapfont ttf-arphic-ukai ttf-arphic-uming opendesktop-fonts ttf-hannom adobe-source-han-sans-jp-fonts otf-ipafont ttf-hanazono ttf-sazanami
sudo pacman -S ibus ibus-kkc
yaourt -S ibus-array
### add the following line to .profile
echo export GTK_IM_MODULE=ibus > ~/.profile
echo export XMODIFIERS=@im=ibus > ~/.profile
echo export QT_IM_MODULE=ibus > ~/.profile
echo ibus-daemon -xrd > ~/.profile
