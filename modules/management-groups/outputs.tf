
// modules/management-groups/outputs.tf
output "management_group_ids" {
  value = merge({ root = var.root_management_group_name }, var.management_groups)
}
