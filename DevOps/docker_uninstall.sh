#!/bin/sh
echo "start uninstalling  docker"
echo "======================================="
# 停止docker服务
sudo systemctl stop docker
 
# 杀死docker进程（为防止特殊情况下有残留的docker进程）
# ps -ef | grep docker | awk '{print $2}' | xargs sudo kill -s 9
 
# 删除执行状态文件的根目录
sudo rm -rf /run/docker
 
# 删除系统服务配置文件
sudo rm -rf /etc/systemd/system/docker.service
 
# 删除docker配置文件
sudo rm -rf /etc/docker
sudo rm -rf /usr/bin/docker
sudo rm -rf /usr/bin/docker-containerd
sudo rm -rf /usr/bin/docker-containerd-ctr
sudo rm -rf /usr/bin/docker-containerd-shim
sudo rm -rf /usr/bin/docker-init
sudo rm -rf /usr/bin/docker-proxy
sudo rm -rf /usr/bin/docker-runc
sudo rm -rf /usr/bin/dockerd
#重新加载配置文件
systemctl daemon-reload
 
echo "docker uninstalled successfully"