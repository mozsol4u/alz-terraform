
// ---------- locals.tf ----------
locals {
  tenant_id                    = var.tenant_id
  connectivity_subscription_id = var.connectivity_subscription_id
  identity_subscription_id     = var.identity_subscription_id
  management_subscription_id   = var.management_subscription_id
  security_subscription_id     = var.security_subscription_id
  workloads_subscription_id    = var.workloads_subscription_id
  location                     = var.location
  prefix                       = var.prefix
}
