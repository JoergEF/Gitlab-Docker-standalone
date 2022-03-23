#!/bin/bash
# GitLab-CE Container erstellen
docker run --detach \
--hostname gitlab \
--publish 80:80 \
--name gitlab \
--restart always \
--shm-size 256m \
gitlab/gitlab-ce:latest
