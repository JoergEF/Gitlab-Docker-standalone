#!/bin/bash
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
