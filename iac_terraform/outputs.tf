output "application_name" {
  value       = var.application_name
  description = "The project/application name for this repository"
  sensitive   = false
}

output "application_shortname" {
  value       = var.application_shortname
  description = "The shortened project/application name for this repository"
  sensitive   = false
}

output "azdo_orgurl" {
  value       = var.azdo_orgurl == "" ? local.azdo_orgurl : var.azdo_orgurl
  description = "The Azure DevOps URL used for this run"
  sensitive   = false
}

output "azdo_pat" {
  value       = var.azdo_pat
  description = "The Azure DevOps PAT used for this run"
  sensitive   = true
}

output "azdo_project_name" {
  value       = var.azdo_project_name
  description = "The Azure DevOps project name used for this run"
  sensitive   = false
}

output "azdo_repo_name" {
  value       = var.azdo_repo_name
  description = "The Azure DevOps repository name used for this run"
  sensitive   = false
}

output "current_azure_subscription_id" {
  value       = data.azurerm_subscription.bcaapp.id
  description = "The current azure subscription id"
  sensitive   = false
}

output "current_azure_tenant_id" {
  value       = local.tenant_id
  description = "The current azure tenant id"
  sensitive   = false

}

output "additional_tags" {
  value       = var.additional_tags
  description = "The additional tags applied to resources as part of this run"
  sensitive   = false
}

output "enable_azdo_unique_names" {
  value       = var.enable_azdo_unique_names
  description = "The flag to enable unique names for resources"
  sensitive   = false
}

output "enable_azrm_unique_names" {
  value       = var.enable_azrm_unique_names
  description = "The flag to enable unique names for resources"
  sensitive   = false
}

output "environment" {
  value       = var.environment_tag
  description = "The environment being worked on with this run"
  sensitive   = false
}

output "keyvault_whitelist" {
  value       = var.azrm_keyvault_whitelist
  description = "The keyvault whitelist for the resources in this repository"
  sensitive   = false
}

output "location" {
  value       = var.azrm_resource_location
  description = "The location of resources being worked on with this run"
  sensitive   = false
}

output "owners_group" {
  value       = local.owners_group_object_id
  description = "The owners group for the resources in this repository"
  sensitive   = false
}

output "storage_account_whitelist" {
  value       = var.azrm_storage_whitelist
  description = "The storage account whitelist for the resources in this repository"
  sensitive   = false
}

output "stored_data_type" {
  value       = var.stored_data_type
  description = "The type of data stored by the resources being worked on with this run"
  sensitive   = false
}

output "subscription_display_name" {
  value       = data.azurerm_subscription.bcaapp.display_name
  description = "The current subscription name"
  sensitive   = false
}

output "subscription_id" {
  value       = data.azurerm_subscription.bcaapp.id
  description = "The current subscription id"
  sensitive   = false
}

output "repo_tags" {
  value       = local.tags
  description = "The tags generated for this repository's resources"
  sensitive   = false
}

output "azrm_tenant_id" {
  value       = var.azrm_tenant_id
  description = "The azure tenant id of resources being worked on with this run"
  sensitive   = false
}
