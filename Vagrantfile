########################################################
#
#   Openstack
#   Demo file to show the use of vagrant-vbguest plugin
#   Demo to show the use of variables
#
#   10/6/2021
#
#   When plugin vagrant-vbguest not exist in the vagrant image it cannot map external folders
#   config.vbguest.auto_update = true  Allow to install vagrant-vbguest in guest machine
# commented are the lines to use if conditions
########################################################
# -*- mode: ruby -*-
require_relative 'config/kolla.rb'
include OpenStack

Vagrant.configure("2") do |config|
  config.vm.box       = BOX_IMAGE
  config.vm.disk :disk, size: "#{VM_DISK_SIZE}", primary: true

  if defined?(SYNCED_FOLDER)
    config.vm.synced_folder "~/", "#{SYNCED_FOLDER}"
  end

  config.vm.define "#{VM_NAME}" do |node|
    node.vm.hostname  = VM_HOSTNAME
    if defined?(PROVISION_FILE) and File.exists?(PROVISION_FILE)
      node.vm.provision :shell, privileged: PRIVILEGED, path: "#{PROVISION_FILE}"
    end
    if FORWARD_HTTP then
     node.vm.network "forwarded_port", guest: 80, host: 8080
     node.vm.network "forwarded_port", guest: 443, host: 4430
    end

    # I still do not understand the use of vagrant-vbguest
    if Vagrant.has_plugin?("vagrant-vbguest") then
      node.vbguest.auto_update = VB_GUEST_UPDATE
      node.vbguest.installer_options = { allow_kernel_upgrade: VB_GUEST_UPDATE }
    end

    node.vm.provider :virtualbox do |v|
      v.memory = VM_MEMORY
      v.name   = "#{VM_NAME}"
      v.cpus   = VM_CPUS
    end

    # post actions
    node.vm.network :private_network, name: "VirtualBox Host-Only Ethernet Adapter", ip: "#{IP_ADDRESS_1}"
    node.vm.network :private_network, name: "VirtualBox Host-Only Ethernet Adapter", ip: "#{IP_ADDRESS_2}"

    node.vm.provision :shell, inline: "ip a | grep eth1 | awk '{print $2}'", run: "always"
    node.vm.provision :shell, inline: "echo ${VM_NAME} is ready using IP #{IP_ADDRESS_1}", run: "always"
  end


end

# following lines are for reference only
# unless Vagrant.has_plugin?("vagrant-vbguest")
#   raise 'The Vagrant VBGuest plugin must be install prior to building this VM (vagrant plugin install vagrant-vbguest)'
# end

# if Vagrant.has_plugin?("vagrant-vbguest") then
#   config.vbguest.auto_update = false
# end
