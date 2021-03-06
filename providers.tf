terraform {

  required_version = "~> 0.13"

  required_providers {
    azurerm = {
      source   = "hashicorp/azurerm"
      version  = "=2.29.0"
      features = {}
    }

    azuread = {
      source  = "hashicorp/azuread"
      version = "=1.0.0"
    }

    local = {
      source  = "hashicorp/local"
      version = "=1.4.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "=2.3.0"
    }

    null = {
      source  = "hashicorp/null"
      version = "=2.1.2"
    }

  }

  backend "azurerm" {
    resource_group_name  = "tf-template"
    storage_account_name = "tftemplate"
    container_name       = "tfstate"
    key                  = "tftemplate.terraform.tfstate"
  }
}

# strange behaviour, needs old style "feature"
provider "azurerm" {
  features {}
}

data "azurerm_client_config" "current" {
}