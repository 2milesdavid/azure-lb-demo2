resource "azurerm_lb_nat_rule" "natrule2" {
  resource_group_name            = var.resource_group
  loadbalancer_id                = azurerm_lb.user25-lb.id
  name                           = "web2SSH"
  protocol                       = "Tcp"
  frontend_port                  = 50002    ### ssh -i ~/.ssh/id_rsa username@LB_VIP -p 50002
  backend_port                   = 22
  frontend_ip_configuration_name = var.pip
}
