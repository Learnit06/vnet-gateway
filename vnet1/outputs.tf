output "resource_group_name" {
  description = "The name of the Resource Group"
  value       = azurerm_resource_group.learn.name
}

output "vnet_name" {
  description = "The name of the Virtual Network"
  value       = azurerm_virtual_network.learn_vnet.name
}

output "subnet_name" {
  description = "The name of the Subnet"
  value       = azurerm_subnet.learn_subnet.name
}

