# This file is used to define the data sources that are used in the terraform code.

# This data source is used to get the current subscription details specifically for tagging purposes.
data "azurerm_subscription" "this" {
  subscription_id = var.azrm_subscription_id
}

data "azurerm_client_config" "current" {
}
