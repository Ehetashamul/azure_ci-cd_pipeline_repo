terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.80.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "rg-storage"
    storage_account_name = "infystorage"
    container_name       = "tfstate"
    key                  = "lab.tfstate"
  }
}

provider "azurerm" {
  features {

  }

}
