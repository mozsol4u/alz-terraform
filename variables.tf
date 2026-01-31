
// Platform coordinates only
variable "tenant_id"                     { type = string }
variable "connectivity_subscription_id"  { type = string }
variable "identity_subscription_id"      { type = string }
variable "management_subscription_id"    { type = string }
variable "security_subscription_id"      { type = string }
variable "workloads_subscription_id"     { type = string }
variable "location"                      { type = string }

// Remote state (names only)
variable "tfstate_rg"        { type = string }
variable "tfstate_sa"        { type = string }
variable "tfstate_container" { type = string }

// Naming seed (optional)
variable "prefix" { type = string default = "alz" }
