#  GIT TRAINING COURSE
## Pre-requisite for Centos 7
```
sudo yum -y update   # update all packages 
sudo yum -y install git wget   # install git and wget 
sudo yum -y install epel-release  # added extra packages
sudo yum -y install htop iotop iftop  # added monitoring tools 
```

##  Install Docker with  Ansible 
### Install Python 
```
sudo yum -y install python3 
```

### Set up a python virtualenv, and install ansible
```shell
  git clone   https://github.com/<your_github_account>/advanced-docker
  cd advanced-docker
  python3 -m venv venv  # install virtualenv module dans la directory venv
  python -V # check python version
  source venv/bin/activate # activate the python virtualenv
  pip3 install wheel  # install pip package wheel for permission usage
  pip install --upgrade pip
  pip3 install ansible # install ansible
  ansible --version  # check, should be version 2.10.6
```

### Run the playbook
```
  ansible-playbook -i inventory  playbook.yml
```

Please log out and log in again of your shell screen for 
the changes take effect. 
```shell script
   docker ps    # check if docker is up and running 
```

