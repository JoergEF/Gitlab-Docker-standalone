Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/focal64"
  config.vm.define "gitlab" do |gitlab|
    gitlab.vm.hostname = "gitlab"
    gitlab.vm.network "forwarded_port", guest: 443, host: 443, auto_correct: true
    gitlab.vm.network "private_network", ip: "192.168.1.11"
    gitlab.vm.provision "shell", path: "scripts/bootstrap.sh"
    gitlab.vm.provider "virtualbox" do |vbox|
      vbox.name = "Gitlab"
      vbox.cpus = "2"
      vbox.memory = "4096"
    end
    gitlab.vm.provision "shell", path: "scripts/gitlab-provision.sh"
  end
end