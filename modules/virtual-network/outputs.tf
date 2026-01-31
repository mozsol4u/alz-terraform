
// modules/virtual-network/outputs.tf
output "vnet_id"    { value = module.vnet.resource_id }
output "subnet_ids" { value = module.vnet.subnets }
