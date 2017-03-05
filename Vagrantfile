# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "bento/ubuntu-16.04"
  
  
  config.vm.provider "virtualbox" do |v|
      v.gui = true
      v.name = "devlaptop_vm"
      v.memory = 2048

      # Supposedly faster VM networking; see http://stackoverflow.com/a/27442379
      # (to combat slow APT package fetching)
      v.customize ["modifyvm", :id, "--nictype1", "virtio"]        
  end

  config.vm.provision "ansible" do |ansible|
    #ansible.sudo = true
    ansible.verbose = "v"
    ansible.host_key_checking = false
    ansible.playbook = "devlaptop-playbook.yml"
  end
end
