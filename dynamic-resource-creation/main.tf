provider "azurerm" {
    features {}
}


resource "azurerm_resource_group" "example" {
  for_each = { for i, name in var.rg_name : name => var.rg_location[i] }

  name     = each.key
  location = each.value
}

resource "azurerm_virtual_network" "example" {
  for_each = {
    for i, vnet_name in var.vnet_name : vnet_name => {
      rg_name       = var.rg_name[i]
      rg_location   = var.rg_location[i]
      address_space = var.address_space[i]
    }
  }

  name                = each.key
  address_space       = [each.value.address_space]
  location            = each.value.rg_location
  resource_group_name = azurerm_resource_group.example[each.value.rg_name].name
}
