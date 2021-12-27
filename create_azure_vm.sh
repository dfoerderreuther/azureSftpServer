source env.sh
ansible-playbook create_azure_vm.yaml --extra-vars "groupname=${RESOURCE_GROUP} sshkey=${SSH_KEY}"