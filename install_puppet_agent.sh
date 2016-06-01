#!/bin/bash
#install foreman + puppet

#test agent
puppet agent --test

#install NTP
puppet module install -i /etc/puppet/environments/production/modules saz/ntp