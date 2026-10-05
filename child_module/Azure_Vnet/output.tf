output "vnet_name" {
  description = "The created VNet name"
  value       = azurerm_virtual_network.vnet.name
}

output "vnet_id" {
  description = "The created VNet ID"
  value       = azurerm_virtual_network.vnet.id
}
