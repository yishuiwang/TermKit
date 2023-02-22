#!/bin/bash

# 指定下载地址和版本号
NODEJS_DOWNLOAD_URL="https://nodejs.org/dist/v19.6.1/node-v19.6.1-linux-x64.tar.gz"
NODEJS_VERSION="19.6.1"

# 下载 Node.js 的二进制包并解压缩到 /usr/local 目录下
cd /usr/local/
sudo curl -o nodejs.tar.gz $NODEJS_DOWNLOAD_URL
sudo tar xvf nodejs.tar.gz
sudo mv node-v$NODEJS_VERSION-linux-x64 nodejs
sudo rm nodejs.tar.gz

# 添加 Node.js 的二进制文件路径到 PATH 环境变量中
echo "export PATH=\$PATH:/usr/local/nodejs/bin" >> ~/.bashrc
source ~/.bashrc

# 验证 Node.js 是否已成功安装
echo "Node.js version: $(node -v)"

# 安装 npm 包管理器
sudo apt-get update
sudo apt-get install -y npm

# 验证 npm 是否已成功安装
echo "npm version: $(npm -v)"
