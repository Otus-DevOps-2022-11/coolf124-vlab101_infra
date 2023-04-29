
#!/bin/bash
echo Start MongoDB
sudo systemctl enable mongod --now
echo Finished Installing MongoDb
cd /home/yc-user
echo Install Git
sudo apt install -y git
echo Finished Installing Git
echo Clonning reddit monolit Repo
git clone -b monolith https://github.com/express42/reddit.git
echo Finished clonning monolit Repo
echo Install reddit
cd reddit && bundle install
echo Finished install repo
echo Start puma
puma -d
echo Finished starting puma
ps aux | grep puma
