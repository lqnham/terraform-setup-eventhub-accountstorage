variable "subscription_id" {
  description = "tbd"
  default     = "32496c5b-1147-452c-8469-3a11028f8946"
}

#azurerm_storage_account variable
variable "resource_group_name" {
  description = "A container that holds related resources for an Azure solution"
  default     = "MVP-POC"
}

variable "storage_account_name" {
  description = "A container that holds related resources for an Azure solution"
  default     = "mvpterraformv1"
}


variable "location" {
  description = "The location/region to keep all your network resources. To get the list of all locations with table format from azure cli, run 'az account list-locations -o table'"
  default     = "eastus2"
}

variable "account_tier" {
  description = "tbd"
  default     = "Standard"
}

variable "account_replication_type" {
  description = "tbd"
  default     = "LRS"
}

variable "access_tier" {
  description = "tbd"
  default     = "Hot"
}

variable "allow_blob_public_access" {
  description = "tbd"
  default     = "true"
}

variable "container_encode_type" {
  description = "tbd"
  default     = "Avro"
}

#azurerm_storage_container variable

variable "storage_container_name" {
  description = "tbd"
  default     = "container1"
}

variable "container_access_type" {
  description = "tbd"
  default     = "private"
}

#azurerm_eventhub_namespace variable
variable "eventhub_namespace_name" {
  description = "tbd"
  default     = "mvppocterraform-namespace"
  #default     = "mvppoc"
}

variable "pricing_tier" {
  description = "tbd"
  default     = "Standard"
}

#azurerm_eventhub variable
variable "eventhub_name" {
  description = "tbd"
  default     = "mvppocterraform-eventhub"
}

variable "interval_capture" {
  description = "tbd"
  default     = "60"
}

variable "capture_filename_format" {
  description = "tbd"
  default     = "{Namespace}/{EventHub}/{PartitionId}/{Year}-{Month}-{Day}T{Hour}:{Minute}:{Second}"
}

variable "maximum_size_per_capture" {
  description = "tbd"
  default     = "10485760"
}

variable "share_policy_name" {
  description = "tbd"
  default     = "terraform-polcy"
}





