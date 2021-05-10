resource "azurerm_network_interface" "nic1" {
    name                		= var.nic1
    location 				= var.region
    resource_group_name 		= var.resource_group

    ip_configuration {
        name                          	= var.ip_conf_name1
        subnet_id                     	= azurerm_subnet.user25-subnet1.id
        private_ip_address_allocation 	= "Dynamic"
    }

    tags = {
        environment 			= "Terraform Demo"
    }
}

resource "azurerm_network_interface_security_group_association" "nic-nsg-association1" {
  network_interface_id      		= azurerm_network_interface.nic1.id
  network_security_group_id 		= azurerm_network_security_group.user25-nsg.id
}

resource "azurerm_network_interface_backend_address_pool_association" "backendPool1" {
  network_interface_id    		= azurerm_network_interface.nic1.id
  ip_configuration_name   		= var.ip_conf_name1
  backend_address_pool_id 		= azurerm_lb_backend_address_pool.user25-bep.id 
}
resource "azurerm_network_interface_nat_rule_association" "natrule1" {
  network_interface_id  		= azurerm_network_interface.nic1.id
  ip_configuration_name 		= var.ip_conf_name1
  nat_rule_id           		= azurerm_lb_nat_rule.natrule1.id
}
