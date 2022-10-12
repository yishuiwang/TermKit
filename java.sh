#!/bin/bash
cd /usr/local
wget https://download.oracle.com/java/19/latest/jdk-19_linux-x64_bin.tar.gz
mkdir /usr/local/java
tar -zxvf jdk-19_linux-x64_bin.tar.gz -C /usr/local/java
echo -e "export JAVA_HOME=/usr/local/java/jdk-19" >> /etc/profile
echo -e "export CLASSPATH=\$JAVA_HOME/lib/tools.jar:\$JAVA_HOME/lib/dt.jar:\$JAVA_HOME/lib" >> /etc/profile
echo -e "export PATH=\$JAVA_HOME/bin:\$PATH" >> /etc/profile
source /etc/profile
java -version