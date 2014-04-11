# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant::Config.run do |config|
  config.vm.box = "ubuntu13.10"
  config.vm.box_url = "http://cloud-images.ubuntu.com/vagrant/saucy/current/saucy-server-cloudimg-amd64-vagrant-disk1.box"
  config.vm.forward_port 80, 8084
  config.vm.network "hostonly", "192.168.33.10"
  config.vm.host_name = "node01.milenlab.com"

#  config.vm.provision :puppet, :module_path => "modules"  

#  config.vm.provision :puppet do |puppet|
#    puppet.manifests_path = "manifests"   
#    puppet.manifest_file  = "default.pp"
#    puppet.options = "--verbose --debug"
#  end
end

