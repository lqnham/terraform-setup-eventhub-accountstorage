

# source: hostname/namespace/providertype. Install registry of hashicorp/azurerm shorthand for registry.terraform.io/hashicorp/azurerm.
# version: version of provider. Optional but recommend using it to enforce the provider version. Without use lasted one.
# azurerm: your cloud .. example: aws, azurerm, google, docker ...

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=2.57.0"
    }
  }
  #required_version:  version of terraform
  required_version = ">= 0.14.7"
}