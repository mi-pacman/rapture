# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  #Arch Controller
  config.vm.define "Master Controller" do |arch|
    arch.vm.box = "terrywang/archlinux"
    arch.vm.network "private_network", ip: "172.16.0.10", virtualbox__intnet: true
    arch.vm.hostname = "master-controller"
    arch.vm.provider "virtualbox" do |vb|
      vb.gui = false
      vb.name = "master"
      vb.cpus = 1
      vb.memory = 1024
    end
  arch.vm.synced_folder "./web-server", "/home/vagrant/web-server"
  arch.vm.provision "shell", path: "scripts/setup-arch.sh"
  end 
end
