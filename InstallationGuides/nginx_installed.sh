#!/bin/bash
yum update -y
amazon-linux-extras install nginx1 -y
sudo fuser -k 80/tcp
sudo fuser -k 443/tcp
systemctl enable nginx
sudo service nginx start


