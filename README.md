## Nodes

5 nodes 

|        | NN   | DN   | ZK   | ZKFC | JN   | RM   | NM   |
| ------ | ---- | ---- | ---- | ---- | ---- | ---- | ---- |
| node01 |      | √    | √    |      | √    | √    | √    |
| node02 |      | √    | √    |      | √    | √    | √    |
| node03 |      | √    | √    |      | √    |      | √    |
| node04 | √    |      |      | √    |      |      |      |
| node05 | √    |      |      | √    |      |      |      |



## prerequisite

#### Get vagrant

https://www.vagrantup.com/

#### Get jdk, zookeeper, hadoop

```
https://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html
get jdk-8u212-linux-x64.tar.gz

wget http://mirror.bit.edu.cn/apache/zookeeper/zookeeper-3.4.14/zookeeper-3.4.14.tar.gz
wget http://mirror.bit.edu.cn/apache/hadoop/common/hadoop-2.8.5/hadoop-2.8.5.tar.gz
```



## Install

```
## generate key for nodes
ssh-keygen -f ssh-key
cat ssh-key.pub >> authorized_keys

## add your pub key
cat ~/.ssh/id_rsa.pub >> authorized_keys

## add vagrant pub key
ssh-keygen -y -f ~/.vagrant.d/insecure_private_key >> authorized_keys

## fire up
./command/up.sh
```



## Init once

```
## node01 node02 node03 
zkServer.sh start

## node01
hadoop-daemon.sh start journalnode
```

``` zkServer.sh start
## node04
hdfs namenode -format
hadoop-daemon.sh start namenode

## node05
hdfs namenode -bootstrapStandby
hadoop-daemon.sh start namenode

## node05
hdfs zkfc -formatZK

## then stop all
stop-all.sh
```



## Start

```
## node01 node02 node03 
zkServer.sh start

## node01
start-dfs.sh

## node01
start-yarn.sh
```



## vagrant

``` 
## up
./command/up.sh

## suspend
./command/suspend.sh

## resume suspended
./command/resume.sh

## shutdown
./command/halt.sh
```





## Check

http://node04:50070

http://node05:50070