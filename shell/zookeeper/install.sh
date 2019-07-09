#!/bin/bash

source /home/vagrant/.bash_profile

cp /vagrant/zookeeper-3.4.14.tar.gz /opt/src/
tar -zxf /opt/src/zookeeper-3.4.14.tar.gz -C /opt/src

cp /vagrant/shell/zookeeper/zoo.cfg $ZOOKEEPER_HOME/conf/zoo.cfg

mkdir -p /opt/zookeeper/
touch /opt/zookeeper/myid
chown -R vagrant /opt/zookeeper/

chown -R vagrant $ZOOKEEPER_HOME
