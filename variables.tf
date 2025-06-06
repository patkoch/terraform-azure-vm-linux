variable "subscription_id" {
  description = "The Azure subscription ID where the resources will be created."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group where the Azure resources will be created."
  type        = string
}

variable "resource_group_location" {
  description = "The Azure region where the resource group will be created."
  type        = string
}

variable "vnet_name" {
  description = "The name of the virtual network."
  type        = string
}

variable "subnet_name" {
  description = "The name of the subnet within the virtual network."
  type        = string
}

variable "public_ip_name" {
  description = "The name of the public IP address."
  type        = string
}

variable "network_interface_name" {
  description = "The name of the network interface."
  type        = string
}

variable "virtual_machine_name" {
  description = "The name of the virtual machine."
  type        = string
}

variable "virtual_machine_size" {
  description = "The size of the virtual machine."
  type        = string
}

variable "virtual_machine_admin_username" {
  description = "The administrator username for the virtual machine."
  type        = string
}

variable "storage_image_reference_offer" {
  description = "The offer of the image to use for the virtual machine."
  type        = string
}

variable "storage_image_reference_sku" {
  description = "The SKU of the image to use for the virtual machine."
  type        = string 
}

variable "storage_image_reference_version" {
  description = "The version of the image to use for the virtual machine."
  type        = string 
}

variable "storage_image_reference_publisher" {
  description = "The publisher of the image to use for the virtual machine."
  type        = string  
}

variable "virtual_machine_admin_password" {
  description = "The administrator password for the virtual machine."
  type        = string
  sensitive   = true
}

variable "virtual_machine_ssh_key_path" {
  type        = string
  default     = "id_rsa.pub"
  description = "Path to the public key"
}