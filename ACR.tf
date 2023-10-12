# resource "azurerm_container_registry" "test02" {
#   name                     = "serverACR"
#   resource_group_name      = azurerm_resource_group.test02.name
#   location                 = azurerm_resource_group.test02.location
#   sku                      = "Basic"  # You can change this to "Standard" or "Premium" based on your requirements.
#   admin_enabled            = false     # Enable admin user (for simplicity in this test02)

# #  identity {
# #    type = "SystemAssigned"
# #    identity_ids = [ 8ae8f1a7-63fe-45f7-819b-5fd35a27de69
# #       azurerm_user_assigned_identity.example.id, 
# #      ]
# #   }
# identity {
#     type = "UserAssigned"
#     identity_ids = [ data.azuread_application.adapp.id ]
#   }



# }

# data "azurerm_container_registry" "test02" {
#   name                = "serverACR"
#   resource_group_name = "test_server1"
# }