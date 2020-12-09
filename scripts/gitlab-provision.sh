#!/bin/bash
# allgemeine Updates
apt-get update
apt-get -y upgrade
# Installation der aktuellen Docker-CE
apt-get -y install apt-transport-https ca-certificates curl gnupg-agent software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
apt-get update
apt-get -y install docker-ce docker-ce-cli containerd.io
usermod -aG docker vagrant
systemctl enable docker
# nötige Verzeichnisse erstellen
mkdir -p /srv/gitlab/{data,logs,config}
# GitLab-CE Container erstellen
docker run --detach \
--hostname gitlab \
--publish 80:80 \
--name gitlab \
--restart always \
--volume /srv/gitlab/config:/etc/gitlab \
--volume /srv/gitlab/logs:/var/log/gitlab \
--volume /srv/gitlab/data:/var/opt/gitlab \
gitlab/gitlab-ce:latest
