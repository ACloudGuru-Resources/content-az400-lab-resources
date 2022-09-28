#!/bin/bash

# zip
sudo apt install -y zip

# nodejs and npm
sudo apt install -y nodejs
sudo apt install -y npm

sleep 60

# Jenkins
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key | sudo apt-key add -
sudo sh -c 'echo deb https://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update
sudo apt-get install -y jenkins
sudo apt install -y java-11-openjdk-devel
sudo touch /var/lib/jenkins/jenkins.install.InstallUtil.lastExecVersion
sudo systemctl restart jenkins
