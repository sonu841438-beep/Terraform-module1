resource_group_name = "rg-demo-module"
location            = "eastus"
vnet_name           = "vnet-demo-module"
vnet_address_space  = ["10.0.0.0/16"]

subnets = {
  frontend = {
    address_prefixes = ["10.0.1.0/24"]
  }
  backend = {
    address_prefixes = ["10.0.2.0/24"]
  }
  app = {
    address_prefixes = ["10.0.3.0/24"]
  }
}
