
// modules/vnet-peering/main.tf
module "peer" {
  source = "Azure/avm-res-network-virtualnetworkpeering/azurerm"

  name                         = var.peering_name
  virtual_network_id           = var.source_vnet_id
  remote_virtual_network_id    = var.target_vnet_id
  allow_forwarded_traffic      = true
  allow_virtual_network_access = true
}
