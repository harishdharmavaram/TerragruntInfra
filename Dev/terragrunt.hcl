terraform {
  backend  "azurerm" {
    storage_account_name  = "jdateststrg"
	resource_group_name   = "terraform-rg"
    container_name        = "versiontf"
    key                   = "terraform.tfstate"
  }
}
