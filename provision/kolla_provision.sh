
#pip install 'ansible<5.0'
echo "installing ansible"
pip3 install ansible

echo "installing git"
sudo sudo dnf install git -y

echo "clonning killa-ansible"
git clone --branch master https://opendev.org/openstack/kolla-ansible
echo "installing kolla-ansible"
pip3 install ./kolla-ansible

echo "Create kolla directoryes"
sudo mkdir -p /etc/kolla
sudo chown $USER:$USER /etc/kolla
sudo cp -r kolla-ansible/etc/kolla/* /etc/kolla
sudo cp kolla-ansible/ansible/inventory/* .
