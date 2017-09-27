#!/bin/bash - 
#===============================================================================
#
#          FILE: vim-setup.sh
# 
#         USAGE: ./vim-setup.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: Vim Setup
#        AUTHOR: Lim Thing-Han, 
#  ORGANIZATION: 
#       CREATED: 09/27/2017 10:24
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

sudo pacman -S git curl vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
### copy .vimrc
if [ -f "./init.vim" ];
then
    cp ./init.vim ~/.vimrc
    sudo pacman -S python2 gvim python-pip clang ctags
    vim +PlugInstall +qall
    # cd .vim/plugged/YouCompleteMe
    # git submodule update --init --recursive
    mkdir ~/Tools/ycm_build
    cd ~/Tools/ycm_build
    cmake -G "Unix Makefiles" -DUSE_SYSTEM_LIBCLANG=ON . ~/.vim/plugged/YouCompleteMe/third_party/ycmd/cpp
    cmake --build . --target ycm_core
fi

