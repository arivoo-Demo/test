# # # # resource "azurerm_user_assigned_identity" "example" {
# # # #   location            = azurerm_resource_group.test02.location
# # # #   name                = "ex-userid-uai"
# # # #   resource_group_name = azurerm_resource_group.test02.name
# # # # }

# resource "azurerm_container_group" "test02" {
#   name                = "server-ACI"
#   location            = azurerm_resource_group.test02.location
#   resource_group_name = azurerm_resource_group.test02.name
#   os_type             = "Linux"

#   # container {
#   #   name   = "testserver-container"
#   #   image  = "nginx:latest"
#   #   cpu    = "0.5"
#   #   memory = "1.5"
#   #   ports {
#   #     port     = 80
#   #     protocol = "TCP"
#   #   }
#   # }

#   # identity {
#   #   type = "UserAssigned"
#   #   identity_ids = ["/subscriptions/f10efc45-f81f-425f-9643-1f68e2bb530f/resourceGroups/test_server1/providers/Microsoft.ManagedIdentity/userAssignedIdentities/serverACR"]

#   # }



#   container {
#     name   = "hello-world"
#     # image  = "yourregistry.azurecr.io/reactazure:latest"
#     image  = "serveracr.azurecr.io/reactazure:latest"
#     cpu    = "0.5"
#     memory = "1.5"

    
#     ports {
#       port     = 80
#       protocol = "TCP"
#     }
#     # registry_credential {
#     #   username = "serverACR"
#     #   password = "0Ju4zttvVqjqbMRTS3xnC+a87YFyaHrumIsh/jELUO+ACRB3D0CY"
#     # }
#   }
# }


# # # # # output "test" {
# # # # #   value = azurerm_user_assigned_identity.example.principal_id
# # # # # }

