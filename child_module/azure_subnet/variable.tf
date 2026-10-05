variable "subnet_name" {
  description = "Subnet name"
  type        = string
}

variable "resource_group_name" {
  description = "Resource group name where the VNet exists"
  type        = string
}

variable "vnet_name" {
  description = "Name of the parent VNet"
  type        = string
}

variable "address_prefixes" {
  description = "CIDR ranges for the subnet"
  type        = list(string)
}
