provider "azurerm" {
  version = ">=2.0.0"
  features {}

}

provider "local" {
  version = ">=1.1.0"
}

provider "random" {
  version = ">=2.0.0"
}

provider "null" {
  version = ">=2.1.0"
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
