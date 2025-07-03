terraform {
  required_version = ">=1.9.0, <2.0.0"
  required_providers {

    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 4.12.0, < 5.0.0"
    }

    random = {
      source  = "hashicorp/random"
      version = ">= 3.6.0, < 4.0.0"
    }
    time = {
      source  = "hashicorp/time"
      version = ">= 0.12.0, < 1.0.0"
    }
  }
  backend "azurerm" {
  }
}


provider "azurerm" {
  features {
    key_vault {
      purge_soft_delete_on_destroy               = true
      purge_soft_deleted_certificates_on_destroy = true
      purge_soft_deleted_keys_on_destroy         = true
      purge_soft_deleted_secrets_on_destroy      = true
      recover_soft_deleted_certificates          = true
      recover_soft_deleted_key_vaults            = true
      recover_soft_deleted_keys                  = true
      recover_soft_deleted_secrets               = true
    }
    resource_group {
      prevent_deletion_if_contains_resources = true
    }
  }
  subscription_id = var.azrm_subscription_id
  tenant_id       = var.azrm_tenant_id
}

provider "random" {

}
provider "time" {

}
