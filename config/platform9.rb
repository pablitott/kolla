# encoding: utf-8
# -*- mode: ruby -*-
module OpenStack

    VM_NAME           = "platform9_node"
    # BOX_IMAGE         = "centos/7"
    BOX_IMAGE         = "centos/8"
    VM_HOSTNAME       = "platform9.local.com"
    VM_DISK_SIZE      = "40GB"
    VM_MEMORY         = 12288
    VM_CPUS           = 4
    FORWARD_HTTP      = false
    # deprecated
    #    VB_GUEST_INSTALL  = true
    VB_GUEST_UPDATE   = false
    PROVISION_FILE    = "platform9.sh"
    PRIVILEGED        = true
    IP_ADDRESS_1      = "192.168.3.108"
    IP_ADDRESS_2      = "192.168.3.109"
    #SYNCED_FOLDER     = "/home/vagrant/openStack"

    NODES             = 1


end