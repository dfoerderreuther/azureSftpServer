source env.sh
ansible-playbook config_webserver.yaml -i myazure_rm.yaml --extra-vars "groupname=${RESOURCE_GROUP}"