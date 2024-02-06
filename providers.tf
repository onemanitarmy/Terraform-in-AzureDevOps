terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = ">= 3.80.0"
    }
  }
    backend "azurerm" {
      resource_group_name  = var.backendResourceGroupName
      storage_account_name = var.backendStorageAccountName
      container_name       = var.backendContainerName
      key                  = var.backendKey
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  skip_provider_registration = true 
  features {}
}
