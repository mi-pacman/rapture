# For provisioning a kubernetes cluster on azure using terraform.

###CREATE_AD_SP_ACCOUNT###

az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/<SUBSCRIPTION_ID>"

###UPDATE_ENVIRONMENT_VARIABLES###

export ARM_CLIENT_ID="<APPID_VALUE>"

export ARM_CLIENT_SECRET="<PASSWORD_VALUE>"

export ARM_SUBSCRIPTION_ID="<SUBSCRIPTION_ID>"

export ARM_TENANT_ID="<TENANT_VALUE>"

###POPULATE_TFVARS_FILE###

###CONFIGURE_KUBERNETES_PROFILE###

az aks get-credentials --resource-group $(terraform output -raw resource_group_name) --name $(terraform output -raw kubernetes_cluster_name)

###ACCESS_DASHBOARD###
az aks browse --resource-group $(terraform output -raw resource_group_name) --name $(terraform output -raw kubernetes_cluster_name)
