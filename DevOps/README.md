## 1panel
地址 https://github.com/1Panel-dev/1Panel

```
curl -sSL https://resource.fit2cloud.com/1panel/package/quick_start.sh -o quick_start.sh && sudo bash quick_start.sh
```

## Lnmp

官网 https://lnmp.org/

```
wget http://soft.vpser.net/lnmp/lnmp1.9.tar.gz -cO lnmp1.9.tar.gz && tar zxf lnmp1.9.tar.gz && cd lnmp1.9 && ./install.sh lnmp
```

## OneinStack

官网 https://oneinstack.com/

````
wget -c http://mirrors.linuxeye.com/oneinstack-full.tar.gz && tar xzf oneinstack-full.tar.gz && ./oneinstack/install.sh
````

## Docker

````
curl -sSL https://get.docker.com/ | sh
````

## 公钥

````
bash <(curl -s https://raw.githubusercontent.com/yishuiwang/TermKit/main/DevOps/ssh_rsa.sh)
````

```
bash <(curl -s https://raw.githubusercontent.com/yishuiwang/TermKit/main/DevOps/ssh_ed25519.sh)
```

## 放行端口
```
iptables -P INPUT ACCEPT
iptables -P FORWARD ACCEPT
iptables -P OUTPUT ACCEPT
iptables -F
netfilter-persistent save
```
