terraform {
  cloud {
    organization = "vijay8564"

    workspaces {
      name = "Terraform"
    }
  }
}
provider "azurerm" {
  features = {}
}

resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "West Europe"
}
