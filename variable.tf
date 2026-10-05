variable "resource_group_name" {
  description = "Name of the Azure resource group"
  type        = string
  default     = "rg-demo-module"
}

variable "location" {
  description = "Azure region for deployment"
  type        = string
  default     = "eastus"
}

variable "vnet_name" {
  description = "Virtual network name"
  type        = string
  default     = "vnet-demo-module"
}

variable "vnet_address_space" {
  description = "CIDR for the VNet"
  type        = list(string)
  default     = ["10.0.0.0/16"]
}

variable "subnets" {
  description = "Map of subnet definitions"
  type = map(object({
    address_prefixes = list(string)
  }))
  default = {
    frontend = {
      address_prefixes = ["10.0.1.0/24"]
    }
    backend = {
      address_prefixes = ["10.0.2.0/24"]
    }
  }
}
