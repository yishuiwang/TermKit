#!/bin/bash

PUBKEY="ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCpIfsFUw1xrKiUzLwDqd3CNQKDuXNBtYPB8IzMT/woK6V1JTIyoHBlhezjU70b9E1trQQtc5Kvv0kyjGBHlPIJYj9rHDlb/pwZZyKCed01OkM4hL3L7Fx8hF34F4vXMMWizMVKO5qH/heMrJ6WngUitOILuuTdBZaske8NDxJNbkl+qAcvGaowT2XGqFi7ljZiC8d80EBb7sqj5BOrb3xKzDkBA7X3jk7RVVUc3a5VT4PKlJwvKD/EQ2CkRGYxbyEN5CDTZxigQwMqfquka3bmxEDK9Oc/SsQquEtWEtVJ7zDMuPmGZQCC4jDA+gPq+i3uCLYlhbJhPg3fR6+Slx4FWIJ09v7q9cytRUEaNf/Es3AnQvBAkUxpt6PhSHnaUWk+N3u3BXS1kjZe0V/Tr6GkaB6KK1O72QEvyxuATOV1vZ7DrkOAKAh426G8iqtx3vyws1oiFW1wRXDfHGO+ENDY4A8RHsXasa3f1WlTnNVUJtRf543qzWzWfbgQs36u9Ms= acher@sz
" 

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
