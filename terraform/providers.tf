terraform {
  required_version = ">= 1.5"
  required_providers {
    azurerm = { source = "hashicorp/azurerm", version = "~> 3.100" }
  }
  backend "azurerm" {
    resource_group_name  = "rg-tfstate"
    storage_account_name = "sttfstatesabarish26"
    container_name       = "tfstate"
    key                  = "gocart.tfstate"
  }
}

provider "azurerm" {
  features {}
}
