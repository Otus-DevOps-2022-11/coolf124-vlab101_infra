#!/bin/bash
sudo apt-get update
sudo apt-get install -y git
git clone -b monolith https://github.com/express42/reddit.git
cd reddit && bundle install
sudo cp /tmp/puma.service /etc/systemd/system/puma.service
chmod +x /etc/systemd/system/puma.service
sudo systemctl enable puma.service --now
