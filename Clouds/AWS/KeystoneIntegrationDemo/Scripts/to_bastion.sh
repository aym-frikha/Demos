#!/bin/sh
sudo chmod 666 kube-keystone.sh
juju scp kubernetes-master/0:kube-keystone.sh .
juju scp kube-keystone.sh bastion/0:~/kube-keystone.sh
juju ssh bastion/0 "mkdir ~/.kube"
juju scp kubernetes-master/0:config .
juju scp config bastion/0:~/.kube/config
juju scp bastion-script.sh bastion/0:~/
juju scp openstack-commands.sh  bastion/0:~/ 
juju ssh bastion/0 "sudo chmod +x bastion-script.sh"
juju ssh bastion/0 "./bastion-script.sh"
