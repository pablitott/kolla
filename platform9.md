# Platform 9 for openstack

[platform 9 source](https://github.com/platform9/pf9ctl)

Use the Platform9 CLI to connect nodes to the Platform9 Management Plane:

1. Download the CLI for each node
bash <(curl -sL https://pmkft-assets.s3-us-west-1.amazonaws.com/pf9ctl_setup)

2. Configure the CLI
pf9ctl config set

Here's your info for quick use:

Account URL: https://pmkft-1638965809-85057.platform9.io
Username: ptrujillo@sgss.com
Password: Alejandra#1


3. Using a user with SUDO privileges, run the PF9 CLI command Prep-Node to attach the node to Platform9.
pf9ctl prep-node
