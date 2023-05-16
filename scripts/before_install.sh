#!/bin/bash

cd /home/ubuntu/server

curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -

sudo apt-get update
sudo apt-get install -y nodejs npm
