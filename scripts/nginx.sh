#!/usr/bin/env bash

apt-get clean
apt-get update
apt-get install nginx openssh-server -y
apt-get clean
mkdir -p /run/sshd
