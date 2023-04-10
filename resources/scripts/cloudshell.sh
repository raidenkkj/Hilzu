#!/bin/bash

touch ~/.cloudshell/no-apt-get-warning

bash <(curl -s https://raw.githubusercontent.com/raidenkkj/Hilzu/master/resources/scripts/ubuntu_install.sh)

npm install -g pm2

current_dir=$(pwd)
if [ "$current_dir" != "$HOME/Loader" ]; then
  cd "$HOME/Loader"
fi

pm2 start run --interpreter bash
pm2 startup
pm2 save
