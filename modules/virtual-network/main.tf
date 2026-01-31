
// modules/virtual-network/main.tf
module "vnet" {
  source = "Azure/avm-res-network-virtualnetwork/azurerm"

  name           = var.name
  location       = var.location
  resource_group = var.resource_group
  address_space  = var.address_space
  subnets        = { for s in var.subnets : s.name => { address_prefixes = s.address_prefixes } }
}
