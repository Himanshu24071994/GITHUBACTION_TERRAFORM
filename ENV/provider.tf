terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.61.0"
    }
  }

backend "azurerm" {
  resource_group_name  = "github-action"
  storage_account_name = "githubactionstoragehs"
  container_name       = "githubactioncontainer"
  key                  = "terraform.tfstate"
}
}

provider "azurerm" {
    subscription_id = "01286d5f-cf26-4989-95d8-5a5229489912"

  features {}
}
