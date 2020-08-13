terraform {

  required_version = "~> 0.13"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.23.0"
      features = {}
    }

    azuread = {
      source  = "hashicorp/azuread"
      version = "=0.11.0"
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
}

# strange behaviour, needs old style "feature"
provider "azurerm" {
  features {}
}

/* data "azurerm_client_config" "current" {
}

/* 
disabled: using terraform backend config in azure pipelines instead.

terraform {
  backend "azurerm" {
    resource_group_name  = "tf-template"
    storage_account_name = "tf-template"
    container_name       = "tfstate"
    key                  = "tf-template.terraform.tfstate"
  }
}
*/

/*
Please maintain the credentials outside your git repository e.g. through environment variables.
ARM_SUBSCRIPTION_ID
ARM_TENANT_ID
*/
