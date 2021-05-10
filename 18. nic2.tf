resource "azurerm_network_interface" "nic2" {
    name                		= var.nic2
    location 				= var.region
    resource_group_name 		= var.resource_group

    ip_configuration {
        name                          	= var.ip_conf_name2
        subnet_id                     	= azurerm_subnet.user25-subnet1.id
        private_ip_address_allocation 	= "Dynamic"
    }

    tags = {
        environment 			= "Terraform Demo"
    }
}

resource "azurerm_network_interface_security_group_association" "nic-nsg-association2" {
  network_interface_id      		= azurerm_network_interface.nic2.id
  network_security_group_id 		= azurerm_network_security_group.user25-nsg.id
}

resource "azurerm_network_interface_backend_address_pool_association" "backendPool2" {
  network_interface_id    		= azurerm_network_interface.nic2.id
  ip_configuration_name   		= var.ip_conf_name2
  backend_address_pool_id 		= azurerm_lb_backend_address_pool.user25-bep.id 
}
resource "azurerm_network_interface_nat_rule_association" "natrule2" {
  network_interface_id  		= azurerm_network_interface.nic2.id
  ip_configuration_name 		= var.ip_conf_name2
  nat_rule_id           		= azurerm_lb_nat_rule.natrule2.id
}
