
Vagrant::Config.run do |config|
  config.vm.box = "opscode-fedora-20"
  config.vm.forward_port 80, 8084
  config.vm.host_name = "development.milenlab.vm"
  config.vm.network :hostonly, "192.168.33.10"
  
  config.vm.provision :puppet do |puppet|
    puppet.manifests_path = "manifests"
    puppet.module_path	  = "modules"    
    puppet.manifest_file  = "site.pp"
  end
end

