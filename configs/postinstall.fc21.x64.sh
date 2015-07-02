#!/bin/bash

# enabling rpmfusion repository
tput setaf 3
echo "----------===== enabling rpmfusion repository =====----------"
tput sgr0
yum -y localinstall --nogpgcheck http://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm http://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# update system
tput setaf 3
echo "----------===== updating system =====----------"
tput sgr0
yum -y update

# disable selinux
tput setaf 3
echo "----------===== disable SElinux =====----------"
tput sgr0
sed -i 's/SELINUX=enforcing/SELINUX=disabled/g' /etc/selinux/config

# installation of needed software
tput setaf 3
echo "----------===== installing software =====----------"
tput sgr0

# required software
yum -y install gcc g++ sbcl.x86_64 openssh-server svn git git-svn gitk tigervnc-server expectk pidgin ksh gnome-tweak-tool sshfs gconf-editor @"Development Tools" @"Development Libraries" vim libreoffice xorg-x11-apps meld mc java-1.7.0-openjdk java-1.7.0-openjdk-devel glibc-devel.i686 glibc.i686 rlwrap valgrind valgrind.i686 openssl-devel.i686 openssl-devel.x86_64 htop iftop emacs kdiff3 

# optional software
 yum -y install kate kdiff3 w3m tree cowsay sl calibre epiphany thunderbird terminus-fonts terminus-fonts-console unrar ffmpeg gmrun qasmixer 

tput setaf 3
echo "----------===== installing media codecs =====----------"
tput sgr0
yum -y install gstreamer-{ffmpeg,plugins-{good,ugly,bad{,-free,-nonfree}}}

tput setaf 3
echo "----------===== installing VLC media player =====----------"
tput sgr0
yum -y install vlc

tput setaf 3
echo "----------===== installing Adobe Flash Player =====----------"
tput sgr0
yum -y install https://dl.dropboxusercontent.com/u/42055189/rpm/flash.rpm

tput setaf 3
echo "----------===== installing Skype =====----------"
tput sgr0
yum -y install https://dl.dropboxusercontent.com/u/42055189/rpm/skype.rpm

# prelink hack
tput setaf 3
echo "----------===== enabling prelink hack =====----------"
tput sgr0
sed -i 's/-l \/lib{,64}/-b \/lib{,64}/g' /etc/prelink.conf
yum -y reinstall glibc.i686

tput setaf 2
echo "----------===== ALL DONE =====----------"
tput sgr0
