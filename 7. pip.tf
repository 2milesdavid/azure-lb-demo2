resource "azurerm_public_ip" "user25-pip" {  
name                = var.pip
location            = var.region  
resource_group_name = var.resource_group
allocation_method   = "Static"  
domain_name_label   = azurerm_resource_group.user25-rg.name

	tags = {    
		environment = "staging"  
	}

}
