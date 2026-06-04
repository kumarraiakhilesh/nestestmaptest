
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg_akhilesh1"
    storage_account_name = "stgakhilesh1"
    container_name       = "container1"
    key                  = "store.tfstate"

  }
}
provider "azurerm" {
  features {}
  subscription_id = "2a38b696-19ea-401f-bfb8-7b2941131b98"
}