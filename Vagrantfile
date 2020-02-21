# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
    config.vm.box = "ubuntu/xenial64"
    config.disksize.size = '50GB'
    
    config.vm.network "forwarded_port", guest: 27017, host: 27017
    config.vm.provision "shell", path: "./scripts/provision-vm.sh"

    config.vm.provider "virtualbox" do |vb|
        vb.memory = 1024 * 8
        vb.cpus = 3
    end
end
