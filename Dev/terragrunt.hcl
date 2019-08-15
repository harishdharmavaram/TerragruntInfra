terraform {
  extra_arguments "common_vars" {
    commands = ["plan", "apply"]

    arguments = [
      "-var-file=../resourcegroup/terraform.tfvars"
	  ]
  }
}