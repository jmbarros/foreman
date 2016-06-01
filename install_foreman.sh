#!/bin/bash
#install foreman 
apt-get install wget 
apt-get -y install ca-certificates
wget https://apt.puppetlabs.com/puppetlabs-release-trusty.deb
dpkg -i puppetlabs-release-trusty.deb

echo "deb http://deb.theforeman.org/ trusty 1.11" > /etc/apt/sources.list.d/foreman.list
echo "deb http://deb.theforeman.org/ plugins 1.11" >> /etc/apt/sources.list.d/foreman.list
wget -q http://deb.theforeman.org/pubkey.gpg -O- | apt-key add -
apt-get update && apt-get -y install foreman-installer
foreman-installer

