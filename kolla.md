Source:  
- [Install OpenStack on Kolla](https://docs.openstack.org/kolla-ansible/latest/user/quickstart.html
)   
- [Build Versatil openstack lab with Kolla](https://www.linuxjournal.com/content/build-versatile-openstack-lab-kolla)

Install Kolla
OS Centos/8


sudo yum update -y
sudo yum upgrade -y
sudo dnf install python3-devel libffi-devel gcc openssl-devel python3-libselinux -y

Create Virtual dnvironment and activate
	python3 -m venv ~/virtual_env
	source ~/virtual_env/bin/activate

Ensure the latest version of pip is installed:
	pip install -U pip

Install Ansible. Kolla Ansible requires at least Ansible 2.10 and supports up to 4.
    ***
	pip install 'ansible<5.0'


DEPLOYMENT
Install KOLLA-Ansible
	pip install git+https://opendev.org/openstack/kolla-ansible@master

Create /etc/kolla
	sudo mkdir -p /etc/kolla
	sudo chown $USER:$USER /etc/kolla

Copy globals.yml and passwords.yml to /etc/kolla directory.
	cp -r ~/virtual_env/share/kolla-ansible/etc_examples/kolla/* /etc/kolla

Copy all-in-one and multinode inventory files to the current directory.
	cp ~/virtual_env/share/kolla-ansible/ansible/inventory/* .


DEVELOPMENT
Install KOLLA-Ansible
	git clone --branch master https://opendev.org/openstack/kolla-ansible

	pip install ./kolla-ansible

	sudo mkdir -p /etc/kolla
	sudo chown $USER:$USER /etc/kolla

	cp -r kolla-ansible/etc/kolla/* /etc/kolla

	cp kolla-ansible/ansible/inventory/* .

Configure Ansible
	vi /etc/ansible/ansible.cfg

	[defaults]
	host_key_checking=False
	pipelining=True
	forks=100

Prepare Initial Configuration
