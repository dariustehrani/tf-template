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