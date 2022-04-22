# GitLab Docker (standalone)

## Anleitung für Gesamtprojekt
https://gist.github.com/JoergEF/4ac451826bcde1b176e97604a43edd51

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
git clone https://github.com/JoergEF/Gitlab-Docker-standalone.git
cd Gitlab-Docker-standalone
make
```

#### initiales root-Passwort anzeigen

```bash
vagrant ssh
sudo grep 'Password:' /srv/gitlab/config/initial_root_password
```

#### Weboberfläche: (dauert ca. 25 Minuten)
  eigene hosts-Datei anpassen:
  
  ```bash
  echo "192.168.1.11 gitlab.kurs.iad gitlab" | sudo tee -a /etc/hosts
  ```
  
  https://gitlab/
