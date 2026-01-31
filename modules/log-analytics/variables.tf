
// modules/log-analytics/variables.tf
variable "name"           { type = string }
variable "location"       { type = string }
variable "resource_group" { type = string }
variable "sku"            { type = string default = "PerGB2018" }
