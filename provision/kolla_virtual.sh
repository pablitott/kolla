sudo yum update -y
sudo dnf install python3-devel libffi-devel gcc openssl-devel python3-libselinux
# install virtual environment
sudo apt install python3-venv
python3 -m venv /path/to/venv
source /path/to/venv/bin/activate
pip install -U pip

pip install 'ansible<5.0'



# git config --global user.name "Pablo Trujillo"
# git config --global user.email "pablitott@github.com"
# git clone https://github.com/openstack/kolla
# git clone https://github.com/openstack/kolla-ansible

# sudo cp -r /usr/share/kolla-ansible/etc_examples/kolla /etc/
# sudo cp /usr/share/kolla-ansible/ansible/inventory/* .
# sudo pip install -r kolla/requirements.txt
# sudo pip install -r kolla-ansible/requirements.txt

# sudo mkdir -p /etc/kolla
# sudo cp -r kolla-ansible/etc/kolla/* /etc/kolla
# sudo cp kolla-ansible/ansible/inventory/* .

# yum install lvm2 -y
# sudo pvcreate /dev/sda
# sudo vgcreate cinder-volumes /dev/sda


#admin password
#keystone_admin_password: ySPVtW1qi8ZxmGxdUQUXBRfRKlLh07LOTYlmK202