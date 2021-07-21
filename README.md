# install-awx-ubuntu
This repo will give you the script to do full deployment of Acceptance ready AWX on Ubuntu Server


# Ansible _AWX_

AWX is an open-source community project sponsored by Red Hat. It serves as the development environment for the Ansible Tower. AWX will have frequent releases and have all new developments.

__Ansible AWX__ provides a web-based user interface to manage Ansible hosts, playbooks, modules, job scheduling, workflow automation, credential sharing, and tooling to enable delegation.


<img src="./docs/images/awx.png" align="center">


Before we move further with the installation, we need to ensure few prequisties

### Prequisites

- 4GB of RAM
- 3.4 GHz CPU with 2 Cores
- Hard disk space 20 GB
- User with `sudo` privileges.
- Good Internet Connection
- Ubuntu Version >= 18.04


### Steps to be followed

> - Install the prerequisites using `common.sh`
> - Install docker components using `docker_install.sh`
> - Install Ansible AWX using `awx_install.sh`

### Installation Steps
All the necessary items which are need to make the deployed to work was captured in the scripts file already, to start

> Clone the repo to your local
`git clone https://github.com/devopshubproject/install-awx-ubuntu.git`

> get into the install-awx-ubuntu folder
`cd ~/install-awx-ubuntu`

> Run the main.sh file for installation
`./main.sh`

### Post Installation Steps (Optional)

Once the installation is complete we can edit the inventory file to update the default username and password.

```
$ cd ~/aws/installer
$ vi inventory
```

Uncomment the admin and password parameters and add a strong admin password. This is the password that you will use to log in to AWX on the web login page.
```
admin_user=admin
admin_password=<Strong-Admin-password>
```

Additionally, update the secret key variable with the secret key generated.
```
secret_key=cHJlbWt1bWFycGFsYW5pY2hhbXk=
```

### Accessing AWX

The AWX web server is accessible on the deployment host, using the host_port value set in the inventory file. The default URL is `http://localhost`.

You will prompted with a login dialog. The default administrator username is admin, and the password is password, incase if you have updated the user name and password do use the same to login.

### Maintenance

Since the installation of __AWX__ is done using _docker-compose_ component the maintenance can be easily managed using `docker-compose` 

* To stop AWX: `docker-compose stop`
* To start AWX: `docker-compose up`
* To upgrade AWS: `docker-compose pull && docker-compose up --force-recreate`

Note: Run this commands from the dir where the docker-compose.yml file is created. Mostly it will be on the same location of the root folder of installer


## Follow-Me

[![Portfolio](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/premkumar-palanichamy)
<p align="left">
<a href="https://linkedin.com/in/premkumarpalanichamy" target="blank"><img align="center" src="https://raw.githubusercontent.com/rahuldkjain/github-profile-readme-generator/master/src/images/icons/Social/linked-in-alt.svg" alt="premkumarpalanichamy" height="30" width="30" /></a>
</p>