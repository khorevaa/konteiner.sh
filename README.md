# konteiner.sh

konteiner.sh contains a template for creating Rancher environments, and a collection of different Rancher environments through different branches.

'master' branch holds the latest template with modules to create a Rancher environment based on resources defined. This will be used as base when creating new environments through creating a new branch.

The branch name defines the environment name

# Usage

Since creation of hosts and volumes isn't added to the official 'terraform-rancher-provider' yet you need to build one from here:

https://github.com/golvteppe/terraform-provider-rancher/tree/host_and_volumes

(I will upload a binary soon)

terraform-rancher-provider plugin needs to be placed in (env script will create the dir):

/etc/local.konteiner.sh/terraform-plugins

Creating an environment:

````
git checkout -b myenvironment
# Check 'examples' file for  resources to add in different files in rancher/
./env apply # Create environment
./env destroy # Destroy environment
````

Files from 'file-templates' will be copied to the following directories if they dont exists:

* Secrets: '/etc/local.konteiner.sh/secrets.tfvars'
* Overrides: '/etc/local.konteiner.sh/host-variables.tfvars'

Update these credentials and overrides as needed.



