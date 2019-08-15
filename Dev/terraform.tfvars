terragrunt = {
  remote_state {
    backend = "azurerm"

    config {
      resource_group_name  = "terraform-rg"
      storage_account_name = "jdateststrg"
      container_name       = "terragruntversion"
      key                  = "staging/east-us/terraform.tfstate"
    }
  }
  
}
