
// modules/management-groups/main.tf
module "mg" {
  source = "Azure/avm-res-management-managementgroup/azurerm"
  version = "~> 0.4"

  root_management_group_name = var.root_management_group_name
  management_groups          = var.management_groups
}
