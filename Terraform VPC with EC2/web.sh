#! /bin/bash
# ec2 instance identity metadata reference - https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-identity-documents.html
sudo yum update -y
sudo yum install -y httpd
sudo systemctl enable httpd
sudo service httpd start  
sudo mkdir /var/www/html/app1
sudo echo '<h1>Hi this is Demo </h1>' | sudo tee /var/www/html/index.html
sudo curl http://169.254.169.254/latest/dynamic/instance-identity/document -o /var/www/html/app1/metadata.html


