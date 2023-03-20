provider "azurerm" {
  features{
     resource_group {
      prevent_deletion_if_contains_resources = false
     }
  }
}

terraform {
  required_providers {
    azapi = {
      source = "azure/azapi"
    }
  }
}

provider "azapi" {
  
}

terraform {
    required_version = ">= 1.0.0"
    }