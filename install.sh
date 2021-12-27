source env.sh

if [ ! -d "gen" ]; then
    mkdir gen
    ssh-keygen -m PEM -t rsa -b 4096 -C "launch@localhost" -N '' -f ./gen/launch_sftp
fi

ansible-playbook create_azure_vm.yaml --extra-vars "groupname=${RESOURCE_GROUP}"
ansible-playbook config_webserver.yaml -i myazure_rm.yaml --extra-vars "groupname=${RESOURCE_GROUP}"