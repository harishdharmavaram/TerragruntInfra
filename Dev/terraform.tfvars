terragrunt = {
  remote_state {
    backend = "azurerm"

    config {
     storage_account_name  = "jdateststrg"
	resource_group_name   = "terraform-rg"
    container_name        = "versiontf"
    key                   = "terraform.tfstate"
    }
  }

  # Configure root level variables that all resources can inherit
  terraform {
    extra_arguments "conditional_vars" {
      commands = ["${get_terraform_commands_that_need_vars()}"]

      required_var_files = [
        "${get_parent_tfvars_dir()}/environment.tfvars",
      ]
    }

    extra_arguments "retry_lock" {
      commands  = ["${get_terraform_commands_that_need_locking()}"]
      arguments = ["-lock-timeout=20m"]
    }
  }
}