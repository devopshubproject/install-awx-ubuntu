#!/bin/sh

### Do system update to update repositories index to the latest version
sudo apt-get update -y

### Once the update is complete, run the upgrade to upgrade the ubuntu system
sudo apt-get upgrade -y

### For Changes (Updates) to reflect - Optional

# sudo reboot now         ## Uncomment the line if needed


# Install Ansible AWX
echo "Installing Ansible AWX..."

# Install Docker lib using python
sudo pip install docker

# Install Anible to deploy AWX Services
echo "Starting Installation of ansible..."
sudo apt-get install -y ansible

# To check the anible version
ansible --version

# Clone AWX repo to install
sudo git clone https://github.com/ansible/awx.git

# Change to directory to AWS installer folder
cd aws/installer

# Highly recommended to change the user, password and secrets in the inventory file - Optional

#sudo vi inventory                          ## Uncomment the line if needed


# To install AWX downloading docker container images
echo "Running Ansible AWX install playbook..."
ansible-playbook -i inventory install.yml


echo "Installtion of Ansible AWX is completed..."

# To check the running docker awx containers
echo "Confirming the deployment"
sudo docker ps -a

echo "To get additonal information about the running containers or to check the logs 'docker logs -f awx_task'"