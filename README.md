# GitLab Docker (standalone)

Ein Demoprojekt innerhalb dessen mittels

  1. Vagrant
  2. Virtualbox
  3. Docker
  4. GitLab CE
  
eine fertige Umgebung als IaC zur Verfügung gestellt wird.

## Benutzung

### Voraussetzungen (Windows)

  1. chocolatey installieren (https://chocolatey.org/install#individual)
  2. choco install make
  3. choco install vagrant

### Voraussetzungen (Ubuntu/Debian)

  1. apt update
  2. apt install build-essential vagrant

```bash
git clone https://github.com/JoergEF/Gitlab_docker_standalone.git
cd Gitlab_docker_standalone
make
```

#### initiales root-Passwort anzeigen

```bash
vagrant ssh
sudo grep 'Password:' /srv/gitlab/config/initial_root_password
```

#### Weboberfläche: (dauert ca. 25 Minuten)
  eigene hosts-Datei anpassen:
  
    ++ 192.168.1.11 gitlab.kurs.iad gitlab
  
  https://gitlab/
