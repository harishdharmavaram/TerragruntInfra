terragrunt = {
  terraform {
    source = "git::https://github.com/harishdharmavaram/Modules.git/resourcegroup"
  }
}

   # Include all settings from the root terraform.tfvars file
  include = {
    path = "${find_in_parent_folders()}"
  }