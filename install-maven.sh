#!/bin/sh
set -e

sudo apt-get -u upgrade -y
sudo apt install openjdk-17-jdk -y
java -version
sudo apt-get -y install maven -y
mvn -version