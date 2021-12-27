# AzureSFTPServer

Ansible scripts for creating an Azure webserver with sftp access to web directory. Development only!

Purpose of this scripts is for easy setup of an SFTP server for self hosting of Adobe Launch configurations.

https://experienceleague.adobe.com/docs/experience-platform/tags/publish/self-hosting-libraries.html

## ./install.sh

- creates ssh pem key in a new folder gen/ if not there
- reads public key from ~/.ssh/id_rsa.pub 
- starts ansible playbook create_azure_vm.yaml to create Azure resources
- starts ansible playbook config_webserver.sh

## ./delete.sh

- deletes Azure resource group with all content

## sftp into webdir: 

sftp -i gen/launch_sftp launch@IP

