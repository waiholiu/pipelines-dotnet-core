
resource "azurerm_resource_group" "example" {
  name     = "rg-lod"
  location = "East US 2"
}

resource "azurerm_app_service_plan" "example" {
  name                = "api-appserviceplan-pro"
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name

  sku {
    tier = "Standard"
    size = "S1"
  }

  tags = {
    environment = "production"
  }
}

resource "azurerm_windows_web_app" "example" {
  name                = "exampleapp1234"
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_app_service_plan.example.location
  service_plan_id     = azurerm_app_service_plan.example.id

  site_config {}
}