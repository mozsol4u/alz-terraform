
// ---------- backend.tf ----------
terraform {
  backend "azurerm" {
    // resource_group_name  = var.tfstate_rg
    // storage_account_name = var.tfstate_sa
    // container_name       = var.tfstate_container
    key                  = "alz.tfstate"
    use_azuread_auth     = true
  }
}
