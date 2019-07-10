# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

PATH=$PATH:$HOME/.local/bin:$HOME/bin

## zookeeper
export PATH;
export ZOOKEEPER_HOME=/opt/src/zookeeper-3.4.14;
export PATH=$ZOOKEEPER_HOME/bin:$PATH;

## jdk
JAVA_HOME=/opt/src/jdk1.8.0_212
JRE_HOME=/opt/src/jdk1.8.0_212/jre
JAVA_BIN=$JAVA_HOME/bin
CLASS_PATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar:$JRE_HOME/lib
CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar:$JRE_HOME/lib
PATH=$PATH:$JAVA_HOME/bin:$JRE_HOME/bin
export JAVA_HOME JRE_HOME CLASS_PATH PATH

## hadoop
export HADOOP_HOME=/opt/src/hadoop-2.8.5
export PATH=$HADOOP_HOME/bin:$HADOOP_HOME/sbin:$PATH:

## hive
HIVE_HOME=/opt/src/apache-hive-2.3.5
HIVE_CONF_DIR=$HIVE_HOME/conf
PATH=$PATH:$JAVA_HOME/bin:$JRE_HOME/bin:$HADOOP_HOME/bin:$HIVE_HOME/bin
export HIVE_HOME HIVE_CONF_DIR PATH

## kafka
export KAFKA_HOME=/opt/src/kafka_2.11-0.10.2.2
export PATH=$PATH:$KAFKA_HOME/bin

## zookeeper
export ZK_HOSTS="node01:2181"
