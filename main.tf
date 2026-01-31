
// 1) Management Groups (all inputs defined in the wrapper)
module "management_groups" {
  source    = "./modules/management-groups"
  tenant_id = local.tenant_id

  root_management_group_name = "mg-nist"
  management_groups = {
    "mg-platform"      = { parent_id = "mg-nist" }
    "mg-landing-zones" = { parent_id = "mg-nist" }
  }
}

// 2) Log Analytics – Management subscription
module "law_management" {
  source    = "./modules/log-analytics"
  providers = { azurerm = azurerm }

  name           = "${local.prefix}-law-mgmt"
  location       = local.location
  resource_group = "rg-logs" // example value; module owns input definitions
  sku            = "PerGB2018"
}

// 3) Hub VNet – Connectivity subscription
module "hub_vnet" {
  source    = "./modules/virtual-network"
  providers = { azurerm = azurerm.connectivity }

  name           = "${local.prefix}-vnet-hub"
  location       = local.location
  resource_group = "rg-networking" // example value; module owns inputs
  address_space  = ["10.0.0.0/16"]
  subnets = [
    { name = "AzureFirewallSubnet", address_prefixes = ["10.0.1.0/24"] },
    { name = "AzureBastionSubnet",  address_prefixes = ["10.0.2.0/27"] },
    { name = "snet-paas",           address_prefixes = ["10.0.10.0/24"] }
  ]
}

// 4) Key Vault in Connectivity (private endpoint to snet-paas)
module "kv_connectivity" {
  source    = "./modules/key-vault"
  providers = { azurerm = azurerm.connectivity }

  name                       = "${local.prefix}-kv-conn"
  location                   = local.location
  resource_group             = "rg-networking" // example value
  private_endpoint_subnet_id = module.hub_vnet.subnet_ids["snet-paas"]
}
