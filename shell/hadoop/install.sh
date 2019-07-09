#!/bin/bash

source /home/vagrant/.bash_profile

sudo mkdir -p /opt/hadoop
sudo chown -R vagrant: /opt/hadoop

cp /vagrant/hadoop-2.8.5.tar.gz /opt/src/
tar -xzf /opt/src/hadoop-2.8.5.tar.gz -C /opt/src

cp /vagrant/shell/hadoop/core-site.xml $HADOOP_HOME/etc/hadoop/core-site.xml
cp /vagrant/shell/hadoop/hdfs-site.xml $HADOOP_HOME/etc/hadoop/hdfs-site.xml
cp /vagrant/shell/hadoop/mapred-site.xml $HADOOP_HOME/etc/hadoop/mapred-site.xml
cp /vagrant/shell/hadoop/slaves $HADOOP_HOME/etc/hadoop/slaves
cp /vagrant/shell/hadoop/yarn-site.xml $HADOOP_HOME/etc/hadoop/yarn-site.xml

chown -R vagrant $HADOOP_HOME




