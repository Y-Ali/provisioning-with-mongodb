#!/bin/bash

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10

echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/4.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.0.list

sudo apt-get update

#sudo apt-get install -y mongodb-org=4.0 mongodb-org-server=4.0 mongodb-org-shell=4.0 mongodb-org-mongos=4.0 mongodb-org-tools=4.0
sudo apt-get install -y mongodb-org=4.0
#sudo apt-get install -y mongodb-org

sudo service mongodb start
