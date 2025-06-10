# Terraform configuration for deploying a Linux (Ubuntu) virtual machine on Azure

## Prepare your terraform.tfvars file

Create a file named "terraform.tfvars" and save it in the working directory of the Terraform configuration, so side by side to the *.tf files.

``` terraform
subscription_id                = "<replace that with your Azure Subscription ID>"
resource_group_name            = "rg-virtualmachinelinux-dev-001"
resource_group_location        = "West Europe"
vnet_name                      = "vnet-dev-westeurope-001"
subnet_name                    = "internal"
public_ip_name                 = "pip-ubuntudev-westeurope-001"
network_interface_name         = "nic-01-ubuntudev-dev-001"
virtual_machine_name           = "vm-ubuntudev-westeurope-001"
virtual_machine_size           = "Standard_B2s"
storage_image_reference_offer = "0001-com-ubuntu-server-jammy"
storage_image_reference_publisher = "Canonical"
storage_image_reference_sku   = "22_04-lts"
storage_image_reference_version = "latest"
virtual_machine_admin_username = "azureuser"
virtual_machine_admin_password = "P@ssw0rd1234!"
virtual_machine_ssh_key_path   = "id_rsa.pub"
```

Set the values due to your needs.

``` bash
az vm image list-skus --location westeurope --publisher Canonical --offer 0001-com-ubuntu-server-jammy --output table
```

Example result:

```
Location    Name
----------  ---------------
westeurope  22_04-lts
westeurope  22_04-lts-arm64
westeurope  22_04-lts-gen2
```

## Create a public/private key pair

In the same directory as your .tf files are located, run

``` terraform
  ssh-keygen -f id_rsa
```

Skip the passphrase.

## Deployment of the virtual machine using Terraform

Conduct the initialization with the following command:

``` terraform
  terraform init
```
Make sure your Terraform configuration files are in the desired format, by using:

``` terraform
terraform fmt
```

Validate your Terraform configuration

``` terraform
terraform validate
```

Create a Terraform plan by running:

``` terraform
terraform plan -out tfplan
```

Deploy the Ubuntu VM on Azure executing:

``` terraform
terraform apply tfplan
```

## Access the virtual machine

Ensure the proper permission for the private key:

``` bash
chmod 600 id_rsa
```

Establish a connection to the virtual machine using:

``` bash
ssh -i id_rsa azureuser@<public ip address>
```

## Destruction of the virtual machine using Terraform

Destroy the Ubuntu VM on Azure executing:

``` terraform
terraform destroy
```

Confirm the destruction with entering "yes".

