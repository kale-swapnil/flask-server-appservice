resource "azurerm_resource_group" "flask_app_rg" {
  name     = var.resource_group
  location = var.location
}

resource "azurerm_service_plan" "app_plan" {
  name = "flask-app-service-plan"
  resource_group_name = var.resource_group
  location = var.location
  os_type = "Linux"
  sku_name = "F1"
}

resource "azurerm_linux_web_app" "web_app" {
  name = "flask-linux-web-app"
  resource_group_name = var.resource_group
  location = var.location
  service_plan_id = azurerm_service_plan.app_plan.id
  site_config {
    application_stack {
      python_version = "3.8"
  }
    }
  

}