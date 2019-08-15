location = "East US"

resource_group_name = "tsk-jda-stg-01"

backend_resource_group_name = "backendstrg"

storage_account_name = "jdateststrg"

container_name = "versiontf"

key = "terraform.tfstate"

tags = {
  rg                 = "tsk-jda-stg-01"
  env                = "staging"
  Department         = 474000
  "Cost_Center_ID"   = "131000"
  "Customer"         = "Shared"
  "Product_Group"    = "Luminate Warehouse Tasking"
  "Environment_Type" = "Test"
}
