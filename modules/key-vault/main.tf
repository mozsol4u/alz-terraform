
// modules/key-vault/main.tf
module "kv" {
  source = "Azure/avm-res-keyvault-vault/azurerm"

  name                      = var.name
  location                  = var.location
  resource_group_name       = var.resource_group
  public_network_access     = "Disabled"
  enable_rbac_authorization = true

  private_endpoints = {
    pe1 = { subnet_id = var.private_endpoint_subnet_id }
  }
}
