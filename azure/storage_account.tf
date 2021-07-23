#Storage and container
resource "azurerm_storage_account" "storeacc" {
  name                     = var.storage_account_name
  resource_group_name      = var.resource_group_name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type
  access_tier              = var.access_tier
  allow_blob_public_access = var.allow_blob_public_access
}

resource "azurerm_storage_container" "storecon" {
  name                  = var.storage_container_name
  storage_account_name  = azurerm_storage_account.storeacc.name
  container_access_type = var.container_access_type
}