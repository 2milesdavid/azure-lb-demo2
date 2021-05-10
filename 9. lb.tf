resource "azurerm_lb" "user25-lb" {
  name                    = var.lb
  location                = var.region
  resource_group_name     = var.resource_group
  
  frontend_ip_configuration {
    name                  = var.pip
    public_ip_address_id  = azurerm_public_ip.user25-pip.id
  }
}
