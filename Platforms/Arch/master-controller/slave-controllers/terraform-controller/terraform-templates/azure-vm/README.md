# For spinning up an azure virtual machine with ssh configured

###OUTPUT_VM_IP###

az vm show -d -g <RG_NAME> -n <VM_NAME> --query publicIps


###OUTPUT_SSH_KEY###

terraform output -raw tls_private_key > ssh_key

