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
client_id = "fcb6884c-6fa1-41f3-a87d-d2a3ba75dedf"
client_secret = "ycY8Q~OymOMEpqAqyQd~bQ.snGW2ZAfJkfnvhdA~"
  tenant_id       = "7855e5f3-1a97-46df-9f2d-b5d34233f627"
  features {}
}

# The resource block defines the type of resource we want to work with
# The name and location are arguements for the resource block

resource "azurerm_resource_group" "app_grp23"{
  name="app-grp23" 
  location="North Europe"
}
