#!/bin/bash
yum install httpd -y
httpd -v
systemctl start httpd
systemctl enable httpd
systemctl status httpd
date > apache_install_date.txt
cat apache_install_date.txt
