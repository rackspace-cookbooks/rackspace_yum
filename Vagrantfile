# -*- mode: ruby -*-
# vi: set ft=ruby :
require 'berkshelf/vagrant'

Vagrant.configure("2") do |config|
  config.vm.box_url = "https://github.com/mitchellh/vagrant-rackspace/raw/master/dummy.box"
  config.vm.box = "dummy"
  config.berkshelf.enabled = true
  config.ssh.private_key_path = "/home/mthode/.ssh/work-vagrant"
  config.ssh.pty = true
  config.vm.provider :rackspace do |rs|
    rs.username = "#{ENV['VAGRANT_USER']}"
    rs.api_key = "#{ENV['VAGRANT_APIKEY']}"
    rs.flavor = /1GB/
    rs.image = /CentOS 6.4/
    rs.public_key_path = "/home/mthode/.ssh/work-vagrant.pub"
    rs.rackspace_region = :iad
  end
  config.vm.provision "shell", path: "https://www.opscode.com/chef/install.sh"
  config.vm.provision :chef_solo do |chef|
    chef.json = {
      :mysql => {
        :server_root_password => 'rootpass',
        :server_debian_password => 'debpass',
        :server_repl_password => 'replpass'
      }
    }

    chef.run_list = [
        "recipe[rackspace_yum::default]"
    ]
  end
end
