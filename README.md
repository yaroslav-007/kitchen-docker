
# kitchen-docker test
Kitchen test that checks docker image box has nginx

## pre-requirements

all pre-requirements to make this work here:
- Linux OS Ubuntu 18.04

- Install **VirtualBox**
    - Execute in terminal: ```sudo apt-get install virtualbox```

- Install **git**
    - Execute in terminal: ```sudo apt-get install git```
	
## How to run the code
In the terminal run the following commands:

```
    git clone git@github.com:yaroslav-007/kitchen-docker.git
    cd kitchen-docker
    vagrant up
    vagrant ssh
  	cd /vagrant
    sudo packer build template.json
    sudo gem install bundler 
  	bundler install 
    sudo bundle exec kitchen list
    sudo bundle exec kitchen test
```