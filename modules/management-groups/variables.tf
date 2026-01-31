variable "root_management_group_name" {
  type        = string
  description = "Root management group name"
}

variable "management_groups" {
  type = list(object({
    name         = string
    display_name = string
  }))
}
