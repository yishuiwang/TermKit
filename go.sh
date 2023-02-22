#!/bin/bash
cd /usr/local
wget https://golang.google.cn/dl/go1.19.2.linux-amd64.tar.gz
tar -zxvf go1.19.2.linux-amd64.tar.gz
echo -e "export GOROOT=/usr/local/go\nexport GOPATH=\$HOME\nexport PATH=\$PATH:\$GOROOT/bin:\$GPPATH/bin" >> /etc/profile
source /etc/profile
go version
source /etc/profile
