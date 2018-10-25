
# kitchen-docker test
Kitchen test that checks docker image box has nginx

## pre-requirements

all pre-requirements to make this work here:
- Linux OS Ubuntu 18.04
- Install **Ruby environment**
	- Execute in terminal: ```sudo apt-get install rbenv ruby-dev ruby-bundler```
	- add the following to your ~/.bash_profile:
			```
			eval "$(rbenv init -)"
			true
			export PATH="$HOME/.rbenv/bin:$PATH"
			```
- Install **Packer**
	- Download Packer from https://www.packer.io/downloads.html
	- Extract the binary file and move/copy it to /usr/local/bin/
	- Check if installed 
		``` packer -v ```


## How to run the code
In the terminal run the following commands:

    git clone git@github.com:yaroslav-007/kitchen-docker.git
    cd kitchen-docker
    packer build template.json
    bundle install 
    kitchen list
    kitchen testgit status