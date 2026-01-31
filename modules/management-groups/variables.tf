
variable "tenant_id"                   { type = string }
variable "root_management_group_name"  { type = string }
variable "management_groups" {
  description = "Map of child management groups and their properties"
  type        = map(object({ parent_id = string }))
}
