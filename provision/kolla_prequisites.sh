# based on https://www.linuxjournal.com/content/build-versatile-openstack-lab-kolla
sudo yum update -y
#sudo yum upgrade -y
# Install pre-requisites
echo "Installing pre-requisites"
sudo dnf install python3-devel libffi-devel gcc openssl-devel python3-libselinux -y
echo "installing python3-pip"
sudo dnf install python3-pip -y
echo "upgarde pip3"
sudo pip3 install -U pip



