resource "azurerm_resource_group" "rg" {
  name                = var.resource_group_name
  location            = var.location
  tags                = var.tags
}

resource "azurerm_data_factory" "adf" {
  name                = var.adf_name
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  identity {
    type = "SystemAssigned"
  }
}

//   vsts_configuration {
//     account_name    = var.account_name
//     branch_name     = var.branch_name
//     project_name    = var.project_name
//     repository_name = var.repository_name
//     root_folder     = var.root_folder
//     tenant_id       = var.tenant_id
//   }
// }