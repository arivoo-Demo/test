resource "azurerm_resource_group" "test02" {
  name     = var.resource_name
  location = "south india"
}

# data "azurerm_resource_group" "test02" {
#   name = var.data_reso
# }

