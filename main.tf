
provider "azurerm" {
    features {}
}

variable "resource_group_name" {}

resource "azurerm_resource_group" "vnet" {
  name     = var.resource_group_name
  location = "East US"
}
