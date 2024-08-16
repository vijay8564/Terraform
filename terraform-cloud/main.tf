terraform {
  cloud {
    organization = "vijay8564"

    workspaces {
      name = "Terraform"
    }
  }
}

variable "secret" {
  description = "client secret"
  type        = string

}

provider "azurerm" {
  features = {}
  client_id       = "c83acb78-7074-4c0f-ad76-68cc820d5ebd"
  client_secret   = var.secret
  tenant_id       = "01cfd074-5415-4ccb-8284-ca1f5bc711cd"
  subscription_id = "d9f96f0e-4bc7-4343-80ee-25efb4f45f4b"
}

resource "azurerm_resource_group" "example" {
  name     = "example-resources"
  location = "West Europe"
}
