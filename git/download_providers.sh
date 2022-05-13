# set plugin version
export PLUGIN_VERSION=2.11.0

export PLUGIN_FILE_NAME=terraform-provider-kubernetes_${PLUGIN_VERSION}_linux_amd64.zip

# download terraform kubernetes provider
wget https://releases.hashicorp.com/terraform-provider-kubernetes/${PLUGIN_VERSION}/${PLUGIN_FILE_NAME}

# move to directory
export FILEPATH=/providers_source/registry.terraform.io/hashicorp/kubernetes/${PLUGIN_VERSION}/
mkdir -p ./providers_source/registry.terraform.io/hashicorp/kubernetes/${PLUGIN_VERSION}/

# move plugin to target directory
cp ${PLUGIN_FILE_NAME} ./${FILEPATH}/${PLUGIN_FILE_NAME}