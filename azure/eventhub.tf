resource "azurerm_eventhub_namespace" "hubname" {
  name                = var.eventhub_namespace_name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku                 = var.pricing_tier
  capacity            = 1
}

resource "azurerm_eventhub" "eventhub" {
  name                = var.eventhub_name
  namespace_name      = azurerm_eventhub_namespace.hubname.name
  resource_group_name = var.resource_group_name
  partition_count     = 1
  message_retention   = 1

  capture_description {
    enabled = true
    #TBD with AvroDeflate
    encoding            = var.container_encode_type
    interval_in_seconds = var.interval_capture
    size_limit_in_bytes = var.maximum_size_per_capture

    destination {
      name                = "EventHubArchive.AzureBlockBlob"
      archive_name_format = var.capture_filename_format
      blob_container_name = azurerm_storage_container.storecon.name
      storage_account_id  = azurerm_storage_account.storeacc.id
    }
  }
}

resource "azurerm_eventhub_authorization_rule" "ev-auth" {
  name                = var.share_policy_name
  namespace_name      = azurerm_eventhub_namespace.hubname.name
  eventhub_name       = azurerm_eventhub.eventhub.name
  resource_group_name = var.resource_group_name
  listen              = true
  send                = false
  manage              = false
}