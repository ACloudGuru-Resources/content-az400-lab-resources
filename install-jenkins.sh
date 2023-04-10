#!/bin/bash -xe

# update
sudo apt-get update -y

# zip
sudo apt-get install -y zip

# nodejs and npm
sudo apt-get install -y nodejs
sudo apt-get install -y npm

sleep 60

# Java
sudo apt-get install -y openjdk-11-jre-headless

# Jenkins
wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key | sudo apt-key add -
sudo sh -c 'echo deb http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'
sudo apt-get update -y
sudo apt-get install -y jenkins
sudo touch /var/lib/jenkins/jenkins.install.InstallUtil.lastExecVersion
sudo systemctl restart jenkins
