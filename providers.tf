terraform {
  required_version = ">= 1.6.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 4.0"
    }
  }
}

# ---------------------------------
# Default provider: Management
# ---------------------------------
provider "azurerm" {
  features {}

  tenant_id       = local.tenant_id
  subscription_id = local.management_subscription_id
}

# ---------------------------------
# Connectivity subscription
# ---------------------------------
provider "azurerm" {
  alias           = "connectivity"
  features        {}

  tenant_id       = local.tenant_id
  subscription_id = local.connectivity_subscription_id
}

# ---------------------------------
# Identity subscription
# ---------------------------------
provider "azurerm" {
  alias           = "identity"
  features        {}

  tenant_id       = local.tenant_id
  subscription_id = local.identity_subscription_id
}

# ---------------------------------
# Workloads subscription
# ---------------------------------
provider "azurerm" {
  alias           = "workloads"
  features        {}

  tenant_id       = local.tenant_id
  subscription_id = local.workloads_subscription_id
}