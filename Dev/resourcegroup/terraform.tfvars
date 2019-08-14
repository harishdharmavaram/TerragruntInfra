terragrunt = {
  terraform {
    source = "git::git@github.com:foo/modules.git//app?ref=v0.0.3"
  }
}
