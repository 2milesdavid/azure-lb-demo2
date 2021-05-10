resource "azurerm_lb_rule" "lb-rule" {
  resource_group_name 			= var.resource_group
  loadbalancer_id 			= azurerm_lb.user25-lb.id
  name 					= "http"
  protocol 				= "Tcp"
  frontend_port 			= 80  ## LB Port
  backend_port 				= 80  ## Server Port
  backend_address_pool_id 		= azurerm_lb_backend_address_pool.user25-bep.id
  frontend_ip_configuration_name 	= var.pip
  probe_id 				= azurerm_lb_probe.user25-lb-probe.id
}

