#!/bin/bash

# install packages needed to this project
which curl docker make ruby || {
  sudo apt-get update
  sudo apt-get install -y curl docker.io make ruby rbenv ruby-dev ruby-bundler gcc g++
  sudo usermod -a -G docker ubuntu
  sudo gem install rubyzip 
  sudo apt-get clean
}

# install bundle and kitchen
pushd /vagrant
sudo gem install bundler 
bundler install
popd

# install packer
which packer || {
  cd /usr/local/bin
  curl -sSL https://raw.githubusercontent.com/kikitux/download-hashicorp-tools/master/download-packer.rb | sudo ruby
}

