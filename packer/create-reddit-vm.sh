yc compute instance create \
  --name reddit-app \
  --zone ru-central1-a \
  --network-interface subnet-name=default-ru-central1-a,nat-ip-version=ipv4 \
  --create-boot-disk image-family=reddit-full,size=15 \
  --ssh-key ~/.ssh/appuser.pub
