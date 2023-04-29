# coolf124-vlab101_infra
# DZ 5
coolf124-vlab101 Infra repository
bastion_IP = 158.160.100.122
someinternalhost_IP = 10.128.0.32

#connect with ssh to someinternalhost with 1 command and alias
# ssh -i ~/.ssh/appuser someinternalhost

### First jumphost. Directly reachable
#Host bastion
#  HostName 158.160.100.122
#  User appuser
### Host to jump to via jumphost1.example.org
#Host someinternalhost
#  HostName 10.128.0.32
#  User appuser
#  ProxyJump appuser@bastio

# or withoud alias
#ssh -i ~/.ssh/appuser -J appuser@158.160.100.122 appuser@10.128.0.32

# DZ 6 Yandex
testapp_IP = 158.160.98.154
testapp_port = 9292
