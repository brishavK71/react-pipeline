#!/bin/bash

cd /home/ubuntu/server/src

npm start

sudo npm install pm2 -g
pm2 start npm --name "reactapp" -- start

sudo env PATH=$PATH:/usr/bin /usr/lib/node_modules/pm2/bin/pm2 startup systemd -u ubuntu --hp /home/ubuntu
sudo env PATH=$PATH:/usr/bin /usr/lib/node_modules/pm2/bin/pm2 save

pm2 restart all
