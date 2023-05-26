
#!/bin/bash
echo Invoke install_ruby.sh
source ./install_ruby.sh
echo Invoke install_mongo.sh
source ./install_mongodb.sh
echo Invoke deploy.sh
source ./deploy.sh
