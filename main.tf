provider "azurerm" {
    version = "~>2.6"
    features {}
}

resource "azurerm_virtual_network" "hub-vnet" {
  name                = "demo-vnet"
  location            = "CentralUS"
  resource_group_name = "contoso"
  address_space       = ["10.0.0.0/16"]
}
