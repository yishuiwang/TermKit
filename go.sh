#!/bin/bash
cd /usr/local
wget https://golang.google.cn/dl/go1.19.2.linux-amd64.tar.gz
mkdir /usr/local/go
tar -zxvf go1.19.2.linux-amd64.tar.gz -C /usr/local/go
echo -e "export GOROOT=/usr/local/go\nexport GOPATH=/usr/local/go\nexport PATH=\$PATH:\$GOROOT/bin:\$GPPATH/bin" >> /etc/profile
source /etc/profile
go version