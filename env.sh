export ANSIBLE_HOST_KEY_CHECKING=False

# resource group name - has to be changed in myazure_rm.yaml as well.
RESOURCE_GROUP=myWebserverGroup

SSH_KEY=`cat ~/.ssh/id_rsa.pub`