resource "azurerm_resource_group" "rg" {
  name     = var.rg_name
  location = var.location
}

resource "azurerm_resource_group" "rg1" {
  name     = var.rg1_name
  location = var.location
}