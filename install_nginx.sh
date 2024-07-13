#!/bin/bash
sudo apt-get update -y
sudo apt-get install nginx -y
sudo systemctl enable nginx
sudo systemctl start nginx
echo "Hello, I am Terraform. I have provisioned this EC2 Instance" | sudo tee /var/www/html/index.html