module "mg" {
  source = "git::https://github.com/Azure/avm-res-managementgroup-azurerm.git?ref=v0.4"

  root_management_group_name = var.root_management_group_name
  management_groups          = var.management_groups
}
