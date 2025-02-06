provider "azurerm" {
  features {}
}

# Create Resource Group
resource "azurerm_resource_group" "learn" {
  name     = "Learn-rg"
  location = var.location
}

# Create Virtual Network
resource "azurerm_virtual_network" "learn_vnet" {
  name                = "Learn-vnet"
  location            = var.location
  resource_group_name = azurerm_resource_group.learn.name
  address_space       = var.address_space

  tags = {
    environment = "Learn"
  }
}

# Create Subnet
resource "azurerm_subnet" "learn_subnet" {
  name                 = "Learn-subnet"
  resource_group_name  = azurerm_resource_group.learn.name
  virtual_network_name = azurerm_virtual_network.learn_vnet.name
  address_prefixes     = var.subnet_address_prefixes
}

