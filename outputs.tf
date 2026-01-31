
// ---------- outputs.tf ----------
output "management_group_ids" {
  description = "IDs of created management groups"
  value       = module.management_groups.management_group_ids
}

output "hub_vnet_id" {
  value = module.hub_vnet.vnet_id
}

output "kv_connectivity_id" {
  value = module.kv_connectivity.id
}
