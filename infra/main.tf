provider "azurerm" {
	features {}
}

resource "azurerm_resource_group" "rg" {
	location = "eastus2"
	name     = "proyectoA"
}

resource "azurerm_container_app_environment" "apps_env" {
	name     = "proyectoa-env"
	location = azurerm_resource_group.rg.location
	resource_group_name = azurerm_resource_group.rg.name
}