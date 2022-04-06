
#!/bin/bash

#mariadb installation

sudo apt update

sudo apt install mariadb-server


sudo mysql_secure_installation





echo "redis installation"


sudo apt install redis-server
sudo nano /etc/redis/redis.conf
sudo systemctl restart redis.service

sudo systemctl status redis
