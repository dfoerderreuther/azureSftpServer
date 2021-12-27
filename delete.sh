source env.sh
ansible-playbook delete_azure_vm.yaml --extra-vars "groupname=${RESOURCE_GROUP}"