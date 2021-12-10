# based on https://www.linuxjournal.com/content/build-versatile-openstack-lab-kolla
sudo yum update -y
#sudo yum upgrade -y
# Install pre-requisites

sudo yum install epel-release
sudo yum install python-pip
sudo yum install python-devel libffi-devel gcc openssl-devel libselinux-python
sudo yum install ansible git

sudo pip install -U pip
sudo yum install git
#pip install 'ansible<5.0'
pip install kolla-ansible --ignore-installed
git config --global user.name "Pablo Trujillo"
git config --global user.email "pablitott@github.com"
git clone https://github.com/openstack/kolla
git clone https://github.com/openstack/kolla-ansible

sudo cp -r /usr/share/kolla-ansible/etc_examples/kolla /etc/
sudo cp /usr/share/kolla-ansible/ansible/inventory/* .
sudo pip install -r kolla/requirements.txt
sudo pip install -r kolla-ansible/requirements.txt

sudo mkdir -p /etc/kolla
sudo cp -r kolla-ansible/etc/kolla/* /etc/kolla
sudo cp kolla-ansible/ansible/inventory/* .

yum install lvm2 -y
sudo pvcreate /dev/sda
sudo vgcreate cinder-volumes /dev/sda


#admin password
#keystone_admin_password: ySPVtW1qi8ZxmGxdUQUXBRfRKlLh07LOTYlmK202