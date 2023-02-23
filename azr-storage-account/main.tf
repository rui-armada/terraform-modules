resource "azurerm_resource_group" "rg" {
  location = var.resource_group_location
  name     = "${var.resource_group_name_prefix}-storage-${var.system}-${var.env}"

  tags = {
    system      = var.system
    environment = var.env
  }
}

resource "azurerm_storage_account" "storage" {
  name                     = "storage${var.system}${var.env}"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = var.env
  }
}

resource "azurerm_storage_container" "example" {
  name                  = "terraform"
  storage_account_name  = azurerm_storage_account.storage.name
  container_access_type = "private"
}