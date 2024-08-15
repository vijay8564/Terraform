resource "azurerm_virtual_network" "example" {
    name                = var.vnet_name
    location            = azurerm_resource_group.example.location
    resource_group_name = azurerm_resource_group.example.name
    address_space       = var.address_space

    depends_on = [azurerm_resource_group.example]
}