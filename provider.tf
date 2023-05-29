provider "azurerm" {
  features{
     resource_group {
      prevent_deletion_if_contains_resources = false
     }
  }
}
terraform {
    required_version = ">= 1.0.0"
    }
