resource "azurerm_virtual_network" "user25-vnet" {
	name 			= var.vnet
	address_space 		= ["25.0.0.0/16","192.168.0.0/16"]
	location		= var.region
	resource_group_name	= var.resource_group
}
