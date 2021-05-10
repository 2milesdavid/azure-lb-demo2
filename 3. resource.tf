resource "azurerm_resource_group" "user25-rg" {
    name     = var.resource_group
    location = var.region

    tags = {
        environment = "Terraform Demo"
    }
}
