
# kitchen-docker test
Kitchen test that checks docker image box has nginx

## pre-requirements

all pre-requirements to make this work here:

- Install **VirtualBox**
    - Download and install accordingly to your OS as described here : https://www.virtualbox.org/wiki/Downloads

- Install **git**
    - Download Download and install accordingly to your OS as described here : https://git-scm.com/downloads

- Install **Vagrant**
    - Download Download and install accordingly to your OS as described here : https://www.vagrantup.com/downloads.html 
	
## How to run the code
1. Open Command Line Interpreter: 

 OS system | Operation
 ------------ | -------------
| Windows | Start menu -> Run and type cmd |
| Linux  |Start terminal |
| macOS | Press Command - spacebar to launch Spotlight and type "Terminal," then double-click the search result. |

2. Run the following commands:
```
    git clone git@github.com:yaroslav-007/kitchen-docker.git
    cd kitchen-docker
    vagrant up
    vagrant ssh
    cd /vagrant
    sudo packer build template.json
    sudo bundle exec kitchen list
    sudo bundle exec kitchen test
```
