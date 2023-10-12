resource "azurerm_network_security_group" "test02" {
  name                = "test_security"
  location            = azurerm_resource_group.test02.location
  resource_group_name = azurerm_resource_group.test02.name
}

resource "azurerm_network_security_rule" "test02" {
  name                        = "test123"
  priority                    = 100
  direction                   = "Outbound"
  access                      = "Allow"
  protocol                    = "Tcp"
  source_port_range           = "*"
  destination_port_range      = "*"
  source_address_prefix       = "*"
  destination_address_prefix  = "*"
  resource_group_name         = azurerm_resource_group.test02.name
  network_security_group_name = azurerm_network_security_group.test02.name
}