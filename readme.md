#Installing Foreman


go to root home
`cd ~`

install GIT
`apt-get install git -y`

clone GIT
`git clone https://github.com/jmbarros/ubuntu`
`git clone https://github.com/jmbarros/foreman`

set permission 
`chmod -R 755 *`

remove ufw and apparmor (only recommended for non production servers)
`./ubuntu/remove_ufw_apparmor.sh`

install foreman
`./foreman/install_foreman.sh`

test puppet and install NTP
`./foreman/install_puppet_agent.sh`

