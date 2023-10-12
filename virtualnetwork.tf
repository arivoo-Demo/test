resource "azurerm_virtual_network" "test02" {
  name                = var.vnet
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.test02.location
  resource_group_name = azurerm_resource_group.test02.name
}

resource "azurerm_subnet" "test02" {
  name                 = var.subnet
  resource_group_name  = azurerm_resource_group.test02.name
  virtual_network_name = azurerm_virtual_network.test02.name
  address_prefixes     = ["10.0.2.0/24"]
}

resource "azurerm_public_ip" "test02" {
  name                = "test_server_ip"
  resource_group_name = azurerm_resource_group.test02.name
  location            = azurerm_resource_group.test02.location
  allocation_method   = "Static"
}
