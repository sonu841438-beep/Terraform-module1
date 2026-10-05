output "subnet_id" {
  description = "The created subnet ID"
  value       = azurerm_subnet.subnet.id
}

output "subnet_name" {
  description = "The created subnet name"
  value       = azurerm_subnet.subnet.name
}
