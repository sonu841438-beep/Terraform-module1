module "resource_group" {
  source = "./child_module/Azure_Resource_group"

  rg_name  = var.resource_group_name
  location = var.location
}

module "vnet" {
  source = "./child_module/Azure_Vnet"

  vnet_name           = var.vnet_name
  location            = var.location
  resource_group_name = module.resource_group.resource_group_name
  address_space       = var.vnet_address_space
}

module "subnets" {
  for_each = var.subnets

  source = "./child_module/azure_subnet"

  subnet_name         = each.key
  resource_group_name = module.resource_group.resource_group_name
  vnet_name           = module.vnet.vnet_name
  address_prefixes    = each.value.address_prefixes
}

output "resource_group_name" {
  value = module.resource_group.resource_group_name
}

output "vnet_name" {
  value = module.vnet.vnet_name
}

output "subnet_names" {
  value = {
    for name, subnet in module.subnets : name => subnet.subnet_name
  }
}
