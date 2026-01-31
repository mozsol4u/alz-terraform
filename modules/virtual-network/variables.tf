
// modules/virtual-network/variables.tf
variable "name"           { type = string }
variable "location"       { type = string }
variable "resource_group" { type = string }
variable "address_space"  { type = list(string) }
variable "subnets" {
  description = "List of subnets to create"
  type        = list(object({ name = string, address_prefixes = list(string) }))
  default     = []
}
