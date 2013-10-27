#!/bin/bash

## Ask some basic questions.

##print "Is this a basic install of Kali?"
##print "Would you like to add the "Bleeding Edge" repositories to Kali?"

## First Run: Add the "Bleeding Edge" repositories.

##echo deb http://repo.kali.org/kali kali-bleeding-edge main >> /etc/apt/sources.list

## Get some updates...

apt-get update
apt-get -y upgrade
apt-get -y dist-upgrade

## First Run: Next, we add ALL of Kali.

apt-get install -y kali-linux-all

## Desktop & Laptop: Kali Live Build environment.

apt-get install -y git live-build cdebootstrap kali-archive-keyring

# Apt-get drivers & such for my the ThinkPad

#apt-get -y install hdapsd tp-smapi-dkms tpb

## Adding some programs that I like in every Linux distro :)

apt-get install -y vim-nox vim-doc mtr strace wipe secure-delete htop sntop

## Add some programs I like in Kali ;) 

apt-get install -y masscan

## Laptop & Desktop: Minor program additions to make working easier. This is tested & working.

apt-get -y install icedove basket pidgin pidgin-extprefs pidgin-hotkeys pidgin-openpgp pidgin-otr pidgin-plugin-pack pidgin-privacy-please

## Some other ham radio stuff - radios are fun! This is tested & working.

apt-get install -y chirp

## We add some gems. "ruby1.9.1-dev" & "libsqlite3-dev" are required for Ronin. This is tested & working.

#apt-get install -y ruby1.9.1-dev libsqlite3-dev sqlite3-doc
#gem install fuzzbert ronin ronin-asm ronin-dorks ronin-exploits ronin-gen ronin-grid ronin-php ronin-scanners ronin-sql ronin-support ronin-web

## Comment these lines out if you are not using a laptop.

apt-get install -y laptop-mode-tools

## Comment these lines out if you don't have an NVidia graphics card - this doesn't work yet; the installation for winexe needs to be fixed.

#apt-get install -y nvclock nvclock-gtk

## Getting OpenVAS set up - not done yet.

#openvas-check-setup
#penvas-setup

## Make personal /opt, /virtual_machines, & /git directories. 

mkdir /root/opt
mkdir /root/opt/configs
mkdir /root/opt/configs/certs
mkdir /root/virtual_machines
mkdir /root/git

## Here is where you perform a "git pull" to grab your personal repositories.

cd /root/git

## Let's download some shit.

cd /root/opt

## Wget some projects; it may be necessary to update the download links (especially for new versions).

#wget http://www.srware.net/downloads/iron64.deb - SRWare Iron is not working due to a dependency problem.
#wget http://downloads.sourceforge.net/project/wxhexeditor/wxHexEditor/v0.22%20Beta/wxHexEditor-v0.22-src.tar.bz2
#wget http://techpatterns.com/downloads/download_item.php?folder=firefox&filename=useragentswitcher.xml
#wget wifipineapple.com/wp4.sh
#wget https://pwn-star.googlecode.com/files/PwnSTAR_0.9.tgz
#wget https://www.cookiecadger.com/files/CookieCadger-1.0.jar
#wget http://www.sptoolkit.com/?aid=2755&sa=1
#wget http://subterfuge.googlecode.com/files/SubterfugePublicBeta5.0.tar.gz

## Subversion some projects...

#svn checkout http://fuzzdb.googlecode.com/svn/trunk/ fuzzdb
#svn checkout http://proxmark3.googlecode.com/svn/trunk pm3

## & Make Git requests for other projects.

#git clone git://git.kali.org/live-build-config.git
#git clone https://github.com/zcutlip/bowcaster.git
#git clone git://github.com/skysploit/simple-ducky.git simple-ducky

## Moving installers to /root/opt/installers

#mv iron64.deb /root/opt/installers

## Now to untar stuff

#tar xvjf devkitARM_r41-i686-linux.tar.bz2 devkitpro/
#tar xvzf PwnSTAR_0.9.tgz
#tar xfvz Wi-fEye-v0.5.6.tar.gz
#tar xfvz SubterfugePublicBeta5.0.tar.gz

## Changing permissions on simple stuff

#chmod +x wp4.sh
#chmod +x CookieCadger-1.0.jar
#chmod +x /root/opt/installers/iron64.deb

## Move a couple of things to where we want them.

#mv useragentswitcher.xml /root/opt/configs

## Installation of things

#dpkg -i /root/opt/iron64.deb

# Removing unneccessary files.

#rm devkitARM_r41-i686-linux.tar.bz2 devkitpro/
#rm PwnSTAR_0.9.tgz
#rm Wi-fEye-v0.5.6.tar.gz
#rm SubterfugePublicBeta5.0.tar.gz

## Cleanup unnecessary stuff.

apt-get -y autoremove
updatedb
