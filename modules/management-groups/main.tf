// modules/management-groups/main.tf
resource "azurerm_management_group" "root" {
  display_name = var.root_management_group_name
  name         = var.root_management_group_name
}

resource "azurerm_management_group" "children" {
  for_each = {
    for mg in var.management_groups : mg.name => mg
  }

  name         = each.value.name
  display_name = each.value.display_name
  parent_management_group_id = azurerm_management_group.root.id
}
