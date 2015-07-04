#!/bin/bash

# This simple script downloads various packages and applications
# for setting up new computers

apt-get update
apt-get upgrade && apt-get dist-upgrade

INSTALL=apt-get -y install

# Packages/Libraries
$INSTALL build-essential python2.7 python2.7-dev git cmake python-pip
$INSTALL openjdk-8-jdk
$INSTALL p7zip-full
$INSTALL mesa-common-dev libgl-dev 
$INSTALL arduino arduino-core

# Configuration
#printf "\n/usr/lib\n/usr/local/lib\n" >> /etc/ld.so.conf

# Applications
$INSTALL terminator
$INSTALL chromium-browser
$INSTALL bless
$INSTALL meld
$INSTALL grsync
$INSTALL cairo-dock
$INSTALL dconf-editor
$INSTALL vlc

# Installing cinnamon desktop?
#$INSTALL cinnamon
# For cpu applet in cinnamon bar
#$INSTALL gir1.2-gtop-2.0

