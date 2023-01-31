provider "azurerm" {
  version = "2.0"
}

resource "azurerm_resource_group" "example" {
  name     = "example-resource-group"
  location = "westus2"
}

