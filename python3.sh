#!/bin/bash
cd /usr/local
wget https://www.python.org/ftp/python/3.10.8/Python-3.10.8.tgz
mkdir /usr/local/python
tar -zxvf Python-3.10.8.tgz -C /usr/local/python
cd /usr/local/python/Python-3.10.8
./configure --prefix=/usr/local/python
make && make install
echo -e "export PATH=/usr/local/python/bin:\$PATH" >> /etc/profile
source /etc/profile
python3 -V
