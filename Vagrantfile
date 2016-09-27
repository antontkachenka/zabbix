# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure(2) do |config|
  config.vm.box = "sbeliakou/centos-6.7-x86_64"
  config.vm.network :private_network, ip: "192.168.1.3"
  config.vm.hostname = "zabbix"
  
  config.vm.provider "virtualbox" do |vb|
    vb = config.vm.hostname
  end

  config.vm.provision "ansible" do |ansible|
    ansible.playbook = 'ansible/provision.yml'
    ansible.verbose = 'vv'
  end


end
