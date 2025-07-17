provider "azurerm" {
  features {}
  subscription_id = "d52a6d4f-8a6b-4e23-a011-dbb0c8d7eddc"
}

terraform {
  backend "azurerm" {
    resource_group_name  = "vs-state-rg-pipeline"
    storage_account_name = "vsstatesapipeline"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}


resource "azurerm_resource_group" "rg" {
name     = "vs-basic-pipeline" #change the name please!
location = "westus2"
}
