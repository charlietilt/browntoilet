# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = '2'

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.omnibus.chef_version = '11.18.12'

  config.vm.provider 'virtualbox' do |v|
    v.name = 'browntoilet'
    v.memory = 1024
  end
  config.vm.network "private_network", type: "dhcp"
  config.vm.network "private_network", ip: "192.168.100.2"
  config.vm.box = 'ubuntu/trusty64'
  config.vm.post_up_message = "
  -------------------------------------------------------------
  browntoilet started successfully
  -------------------------------------------------------------
  Connection Information:
    app path: /vagrant
    host: browntoilet
    ssh: vagrant ssh
  -------------------------------------------------------------"
  config.vm.provision 'chef_solo' do |chef|
    chef.json = {
      nodejs: {
        version: "0.12.7",
        npm_packages: [
          { "name" => "coffee-script" }
        ]
      }
    }

    chef.run_list = [
      'recipe[apt]',
      'recipe[build-essential]',
      'recipe[nodejs]',
      'recipe[nodejs::nodejs_from_binary]'
    ]
  end

  # config.vm.provision 'shell',
  #   inline: "sudo apt-get install -y libfontconfig1; sudo apt-get install -y libkrb5-dev"
end
