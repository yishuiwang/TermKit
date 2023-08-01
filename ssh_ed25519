#!/bin/bash

PUBKEY="ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIBqvFsDVQVOoA99baFD+HZzBALb2qvEVW4aJSRAxK/7o arch@sz"

USER=root

AUTHORIZED_KEYS="/root/.ssh/authorized_keys"

if [ ! -f "$AUTHORIZED_KEYS" ]; then
  sudo mkdir -p /root/.ssh
  sudo touch /root/.ssh/authorized_keys
  sudo chmod 600 /root/.ssh/authorized_keys
fi 

if grep -q "$PUBKEY" "$AUTHORIZED_KEYS"; then
  echo "公钥已存在于AUTHORIZED_KEYS文件中"
else
  echo "$PUBKEY" >> "$AUTHORIZED_KEYS"
  if [ $? -eq 0 ]; then
    echo "公钥已成功添加到AUTHORIZED_KEYS文件中"
  else
    echo "无法添加公钥到AUTHORIZED_KEYS文件"
  fi
fi
