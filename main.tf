terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
    azuread={
      
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  skip_provider_registration = true # This is only required when the User, Service Principal, or Identity running Terraform lacks the permissions to register Azure Resource Providers.
  features {}
}

# provider "azuread" {
 
# }


# export ARM_CLIENT_ID="29b7fbfe-376e-4250-ae87-c3b293885534"
# export ARM_CLIENT_SECRET="rkg8Q~UjvyA022miO_Ju87eRanJjbYQeExfvKdua"
# export ARM_TENANT_ID="8ae8f1a7-63fe-45f7-819b-5fd35a27de69"
# export ARM_SUBSCRIPTION_ID="f10efc45-f81f-425f-9643-1f68e2bb530f"