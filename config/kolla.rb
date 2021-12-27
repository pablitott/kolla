# encoding: utf-8
# -*- mode: ruby -*-
module OpenStack

    VM_NAME                = "kolla_server"
    # BOX_IMAGE            = "centos/7"
    BOX_IMAGE              = "centos/8"
    VM_HOSTNAME            = "kolla.local.com"
    VM_DISK_SIZE           = "40GB"
    VM_MEMORY              = 2 * 1024
    VM_CPUS                = 2
    FORWARD_HTTP           = false
    VB_GUEST_UPDATE        = false
    IP_ADDRESS_1           =  "192.168.3.108"
    IP_ADDRESS_2           = "192.168.3.109"
    #SYNCED_FOLDER         = "/home/vagrant/openStack"

    NODES             = 1


end