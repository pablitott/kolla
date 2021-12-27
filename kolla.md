Source:
- [Install OpenStack on Kolla](https://docs.openstack.org/kolla-ansible/latest/user/quickstart.html
)
- [Build Versatil openstack lab with Kolla](https://www.linuxjournal.com/content/build-versatile-openstack-lab-kolla)
[Vagrant](https://friendsofvagrant.github.io/v1/docs/index.html)

[add new disks using LVM to Linux](https://www.tecmint.com/add-new-disks-using-lvm-to-linux/)
Install Kolla
OS Centos/8
```bash
sudo yum update -y
sudo yum upgrade -y
sudo dnf install python3-devel libffi-devel gcc openssl-devel python3-libselinux -y
```

Create Virtual dnvironment and activate
```bash
python3 -m venv ~/virtual_env
source ~/virtual_env/bin/activate
```
Ensure the latest version of pip is installed:
```bash
	pip install -U pip
```
Install Ansible. Kolla Ansible requires at least Ansible 2.10 and supports up to 4.
>	pip install 'ansible<5.0'


DEPLOYMENT
Install KOLLA-Ansible
> pip install git+https://opendev.org/openstack/kolla-ansible@master

Create /etc/kolla
```bash
sudo mkdir -p /etc/kolla
sudo chown $USER:$USER /etc/kolla
```
Copy globals.yml and passwords.yml to /etc/kolla directory.
````bash
cp -r ~/virtual_env/share/kolla-ansible/etc_examples/kolla/* /etc/kolla
````
Copy all-in-one and multinode inventory files to the current directory.
> cp ~/virtual_env/share/kolla-ansible/ansible/inventory/* .


DEVELOPMENT
Install KOLLA-Ansible
```bash
git clone --branch master https://opendev.org/openstack/kolla-ansible
pip install ./kolla-ansible
sudo mkdir -p /etc/kolla
sudo chown $USER:$USER /etc/kolla
cp -r kolla-ansible/etc/kolla/* /etc/kolla
cp kolla-ansible/ansible/inventory/* .
```
Configure Ansible
>	vi /etc/ansible/ansible.cfg
```ini
[defaults]
host_key_checking=False
pipelining=True
forks=100
```

Prepare Initial Configuration
ID Controllers
v.customize ['createhd', '--filename', file_to_disk, '--format', 'ADI', '--size', 40 * 1024 ] # 40 GB
IDE  = Controller

- vhd  = VirtualBox Hard Drive
- vdi  = VirtualBox Disk Image
- vmdk = Virtual Machine Disk
- hdd  = Parallels Hard Disk
- QCOW = QEMU Copy-On-Write
- QED  = QEMU Enhanced Disk

https://www.tecmint.com/add-new-disks-using-lvm-to-linux/
prepare disks
> lsblk
NAME   MAJ:MIN RM SIZE RO TYPE MOUNTPOINT
    sda      8:0    0  10G  0 disk
    └─sda1   8:1    0  10G  0 part /
    sdb      8:16   0  40G  0 disk
    sdc      8:32   0  40G  0 disk

[Create disk partitions ](https://linuxize.com/post/fdisk-command-in-linux/)
List partitions
fdisk -l <device>
   fdisk -l /dev/sda

Create partitions mannually
	fdisk /dev/sdb
Create Partitions unattended
   - Create a partition file
	> sfdisk -s /dev/sdb sdbPertition
   - Create a partirion based on the partition file
    > sfdisk /dev/sdc < sdbPartition


Activating partitions
