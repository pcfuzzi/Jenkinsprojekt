terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.0.0"
    }
  }
}

# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}
variable "prefix" {
  default = "Adriano-Christmann-jenkinsprojekt"
}
resource "azurerm_resource_group" "rg" {
  name     = "${var.prefix}-rg"
  location = "West Europe"
}
