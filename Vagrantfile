# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.
  
  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  config.vm.box = "ubuntu/trusty64"
  
  config.vm.host_name = "concourse-worker"
  
  config.vm.provider "virtualbox" do |vb|
    vb.cpus = 4
    vb.memory = "2048"
  end
  
  config.vm.provision :ansible do |ansible|
    ansible.playbook = "ansible/vagrant.yml"
    ansible.host_key_checking = false
    ansible.extra_vars = { ansible_ssh_user: "vagrant" }
  end
end
