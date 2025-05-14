#!/bin/bash
dnf update -y
dnf install -y httpd
systemctl start httpd
systemctl enable httpd
echo "<h1>AWS EC2 Static Website Example</h1>" > /var/www/html/index.html