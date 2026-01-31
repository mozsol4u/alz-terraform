
// modules/log-analytics/main.tf
module "law" {
  source = "Azure/avm-res-operationalinsights-workspace/azurerm"

  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group
  sku                 = var.sku
}
