# -*- mode: ruby -*-
# vi: set ft=ruby :

# [
#   { :name => "vagrant-berkshelf", :version => ">= 4.0.0" }
# ].each do |plugin|

#   if not Vagrant.has_plugin?(plugin[:name], plugin[:version])
#     raise "#{plugin[:name]} #{plugin[:version]} is required. Please run `vagrant plugin install #{plugin[:name]}`"
#   end
# end

Vagrant.configure(2) do |config|
  config.vm.box = 'bento/centos-7.2'

  config.vm.network 'forwarded_port', guest: 9000, host: 19000

  config.vm.provider 'virtualbox' do |v|
    v.customize ['modifyvm', :id, '--natdnshostresolver1', 'on']
    v.customize ['modifyvm', :id, '--cpus', 2]
    v.customize ['modifyvm', :id, '--memory', '1024']
    # v.customize ["modifyvm", :id, "--name", "sonarqube"]
  end

  config.berkshelf.enabled = true

  config.vm.provision 'chef_solo' do |chef|
    chef.add_recipe 'sonarqube-liatrio'
    chef.json = {
      'java' => {
        'jdk_version' => '8'
      }
    }
  end
end
