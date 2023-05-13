
#!/bin/bash
echo Installing Ruby using apt
apt update
sleep 10
apt install -y ruby-full ruby-bundler build-essential
echo Finished Installing Ruby
ruby -v
bundler -v
