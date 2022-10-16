#!/bin/sh
sudo yum install gcc openldap-devel pam-devel openssl-devel wget -y

sudo firewall-cmd --zone=public --add-port=1345/tcp --permanent
sudo firewall-cmd --zone=public --add-port=1345/udp --permanent
sudo systemctl restart firewalld.service
sudo firewall-cmd --list-ports
sudo wget --no-check-certificate https://raw.github.com/Lozy/danted/master/install.sh -O install.sh
sudo bash install.sh --port=1345 --user=mjreg --passwd=io49feSY83fLSFgre83d
