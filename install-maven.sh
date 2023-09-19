#!/bin/sh
set -e
sudo apt-get -u upgrade -y
sudo apt-get install default-jdk -y
# java -version
# TMP_MAVEN_VERSION=3.9.4
# cd /tmp; wget https://apache.org/dist/maven/maven-3/$TMP_MAVEN_VERSION/binaries/apache-maven-$TMP_MAVEN_VERSION-bin.tar.gz -P /tmp
# sudo tar xf /tmp/apache-maven-*.tar.gz -C /opt
# sudo rm /tmp/apache-maven-*-bin.tar.gz
# install_dir="/opt/maven"
# if [ -d "/opt/maven" ]; then
#     sudo rm -rf /opt/maven
# fi
# sudo ln -s /opt/apache-maven-$TMP_MAVEN_VERSION /opt/maven
# sudo touch /etc/profile.d/maven.sh
# ls -l /etc/profile.d/maven.sh
# echo $USER
# echo $user
# sudo chown -R /etc/profile.d/maven.sh

# sudo bash -c 'cat << EOF > /etc/profile.d/maven.sh
# export JAVA_HOME=/usr/lib/jvm/default-java
# export M2_HOME=/opt/maven
# export MAVEN_HOME=/opt/maven
# export PATH=/opt/maven/bin:$PATH
# EOF'

# sudo chmod +x /etc/profile.d/maven.sh
# source /etc/profile.d/maven.sh
# mvn -v

# # Install Docker CE
# sudo apt-get -u upgrade -y
# sudo apt-get install -y \
#     apt-transport-https \
#     ca-certificates \
#     curl \
#     gnupg \
#     lsb-release
    
# curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

# sudo echo \
# "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
# $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
# sudo apt-get update
# sudo apt-get install -y docker-ce docker-ce-cli containerd.io


# # Install docker-compose
# sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" \
# -o /usr/local/bin/docker-compose
# sudo chmod +x /usr/local/bin/docker-compose