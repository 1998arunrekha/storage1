resource "azurerm_resource_group" "rg" {
  name     = var.resourcegroupname
  location = var.location
}

resource "azurerm_storage_account" "newstorage6622" {
  name                     = var.storageaccountname
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "production"
  }
}