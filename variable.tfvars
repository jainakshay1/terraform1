provider "azurerm" {
  version = "2.0"

  subscription_id = var.subscription_id
  client_id       = var.client_id
  client_secret   = var.client_secret
  tenant_id       = var.tenant_id
}

variable "subscription_id" {
  type = string
}

variable "client_id" {
  type = string
}

variable "client_secret" {
  type = string
}

variable "tenant_id" {
  type = string
}

resource "azurerm_resource_group" "example" {
  name     = "example-resource-group"
  location = "westus2"
}
