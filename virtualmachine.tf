
resource "azurerm_network_interface" "test02" {
  name                = var.netint
  location            = azurerm_resource_group.test02.location
  resource_group_name = azurerm_resource_group.test02.name

  ip_configuration {
    name                          = var.ip
    subnet_id                     = azurerm_subnet.test02.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.test02.id
  }
}

resource "azurerm_linux_virtual_machine" "test02" {
  name                = var.linuxvm
  resource_group_name = azurerm_resource_group.test02.name
  location            = azurerm_resource_group.test02.location
  size                = "Standard_DS2_v2"
  admin_username      = "adminserver"
  network_interface_ids = [
    azurerm_network_interface.test02.id,
  ]

  admin_ssh_key {
    username   = "adminserver"
    public_key = file("/home/arivoomathi/virtualmachine.pub")
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-focal"
    sku       = "20_04-lts"
    version   = "latest"
  }
}