resource "azurerm_storage_account" "user25-diag-storage" {
    name                	= var.diag-storage
    resource_group_name 	= var.resource_group
    location 			= var.region
    account_replication_type 	= "LRS"
    account_tier 		= "Standard"

    tags = {
        environment = "Terraform Demo"
    }
}

