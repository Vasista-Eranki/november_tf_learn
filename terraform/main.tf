terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.31.0"
    }
  }
}

provider "azurerm" {
  features {}
  #subscription_id = var.subscriptionid
  #tenant_id       = var.tenantid
  #client_id       = var.clientid
  #client_secret   = var.clientsecret
}

locals {
  rg_tag = "${terraform.workspace}-rg"
}

resource "azurerm_resource_group" "hexa-day5-rg" {
  location = "eastus"
  name = "${local.rg_tag}-rg"
  tags = { "Name" = local.rg_tag }
}
