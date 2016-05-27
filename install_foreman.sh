#!/bin/bash
#install foreman 
apt-get install wget 

echo "deb http://deb.theforeman.org/ trusty 1.11" >> etc/apt/sources.list
echo "deb http://deb.theforeman.org/ plugins 1.11" >> etc/apt/sources.list

wget -q http://deb.theforeman.org/pubkey.gpg -O- | apt-key add -

apt-get install foreman foreman-sqlite3 foreman-libvirt