
#!/bin/bash
echo Installing Ruby using apt
sudo apt update
sudo apt install -y ruby-full ruby-bundler build-essential
echo Finished Installing Ruby
ruby -v
bundler -v
