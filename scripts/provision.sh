#!/bin/bash

which curl docker make ruby || {
  sudo apt-get update
  sudo apt-get install -y curl docker.io make ruby rbenv ruby-dev ruby-bundler gcc g++
  sudo usermod -a -G docker ubuntu
  sudo gem install rubyzip 
  pushd /vagrant
  sudo gem install bundler 
  bundler install
  popd
  sudo apt-get clean
}

which packer || {
  cd /usr/local/bin
  curl -sSL https://raw.githubusercontent.com/kikitux/download-hashicorp-tools/master/download-packer.rb | sudo ruby
}

