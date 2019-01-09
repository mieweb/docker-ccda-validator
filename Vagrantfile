# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "bento/fedora-21"
  config.vm.network "forwarded_port", guest: 8080, host: 8080

  # Vagrant boot needs more time on AppVeyor (see https://help.appveyor.com/discussions/problems/1247-vagrant-not-working-inside-appveyor)
  config.vm.boot_timeout = 1800

  config.vm.synced_folder "./webapps", "/var/lib/tomcat/webapps", create:true, owner: "root", group: "root", mount_options: ["dmode=777,fmode=666"]
  config.vm.synced_folder "./conf", "/etc/tomcat", create:true, owner: "root", group: "root", mount_options: ["dmode=777,fmode=666"]
  config.vm.synced_folder "./log", "/var/log/tomcat", create:true, owner: "root", group: "root", mount_options: ["dmode=777,fmode=666"]
  config.vm.synced_folder "./submodules/reference-ccda-validator", "/etc/submodules/reference-ccda-validator", create:true, owner: "root", group: "root", mount_options: ["dmode=777,fmode=666"]
  config.vm.synced_folder "./submodules/code-validator-api", "/etc/submodules/code-validator-api", create:true, owner: "root", group: "root", mount_options: ["dmode=777,fmode=666"]
  config.vm.synced_folder "./files", "/etc/ccda/files", create:true, owner: "root", group: "root", mount_options: ["dmode=777,fmode=666"]

  config.vm.provision "shell", path: "files/scripts/do-magic.sh"

  config.vm.provider "virtualbox" do |vb|
    # Vagrant needs this config on AppVeyor to spin up correctly (see https://help.appveyor.com/discussions/problems/1247-vagrant-not-working-inside-appveyor)
    vb.customize ["modifyvm", :id, "--nictype1", "Am79C973"]
    vb.customize ['modifyvm', :id, '--cableconnected1', 'on']
  end
  
  config.vm.provision "shell" do |s|
    s.inline = "yum -y install puppet"
  end

  config.vm.provision "puppet" do |puppet|
    puppet.manifests_path = "Puppet/manifests"
    puppet.module_path = "Puppet/modules"
    puppet.manifest_file  = "site.pp"
  end
end
