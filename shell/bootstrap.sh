#!/usr/bin/env bash
sudo mkdir -p /opt/src
sudo chown -R vagrant /opt/src

sudo cp /vagrant/hosts /etc/hosts
sudo cp /vagrant/resolv.conf /etc/resolv.conf
sudo cp /vagrant/authorized_keys /home/vagrant/.ssh/;
sudo cp /vagrant/ssh-key /home/vagrant/.ssh/id_rsa
sudo cp /vagrant/ssh-key.pub /home/vagrant/.ssh/id_rsa.pub
sudo chmod 700 /home/vagrant/.ssh;
sudo chmod 600 /home/vagrant/.ssh/*;
sudo chown -R vagrant: /home/vagrant/.ssh;


yum install ntp vim tar zip unzip -y
service ntpd start
#service iptables stop
mkdir -p /root/.ssh; chmod 600 /root/.ssh; cp /home/vagrant/.ssh/authorized_keys /root/.ssh/

#Again, stopping iptables
# /etc/init.d/iptables stop

# Increasing swap space
sudo dd if=/dev/zero of=/swapfile bs=1024 count=1024k
sudo mkswap /swapfile
sudo swapon /swapfile
echo "/swapfile       none    swap    sw      0       0" >> /etc/fstab

# Workaround from https://www.digitalocean.com/community/questions/can-t-install-mysql-on-centos-7
# rpm -Uvh http://dev.mysql.com/get/mysql-community-release-el7-5.noarch.rpm

## java
cp /vagrant/jdk1.8.0_112.zip /opt/src/
cd /opt/src/;
unzip jdk1.8.0_112.zip -d /opt/src/

cp /vagrant/bash_profile /home/vagrant/.bash_profile
