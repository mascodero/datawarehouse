# Resource group
resource_group_name = "rginte"
location = "canadaeast"
adf_name = "adfinte"

tags = {
  responsable = "Michel"
  module      = "datafactory"
}

vsts_configuration = {
  account_name    = "Michel London"
  branch_name     = "main"
  project_name    = "Infra-Azure"
  repository_name = "adf-repos"
  root_folder     = "/"
  tenant_id       = "b2b4b2de-5721-45cf-80e3-99f0c5f30e09"
}