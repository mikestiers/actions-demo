provider "azurerm" {
    version = "~>2.6"
    tenant_id       = var.tenant_id
    subscription_id = var.subscription_id
    client_id       = var.client_id
    client_secret   = var.client_secret
    features {}
}

resource "azurerm_virtual_network" "hub-vnet" {
  name                = "demo-vnet"
  location            = "CentralUS"
  resource_group_name = "contoso"
  address_space       = ["10.0.0.0/16"]
}
