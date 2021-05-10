resource "azurerm_lb_backend_address_pool" "user25-bep" {
    name 		= var.bep
    resource_group_name = var.resource_group
    loadbalancer_id     = azurerm_lb.user25-lb.id
}
