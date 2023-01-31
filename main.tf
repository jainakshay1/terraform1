terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = " 2.92.0"
    }
  }
}

# Here we need to mention the Azure AD Application Object credentials to allow us to work with 
# our Azure account

provider "azurerm" {
subscription_id = "9156aa47-68d4-4448-8f56-8412ed6e25d5"
client_id = "27f2209f-76ec-41fb-a895-9e69a3a0ee58"
client_secret = "lpk8Q~EVVvrlI9UFJAjfm-MErN6q1h3w-D6a2cA1"
  tenant_id       = "7855e5f3-1a97-46df-9f2d-b5d34233f627"
  features {}
}

# The resource block defines the type of resource we want to work with
# The name and location are arguements for the resource block

resource "azurerm_resource_group" "app_grp23"{
  name="app-grp23" 
  location="North Europe"
}
