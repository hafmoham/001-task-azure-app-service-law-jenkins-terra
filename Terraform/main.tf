resource "azurerm_resource_group" "rg" {
  name     = var.rg_shared_name
  location = var.deploy_location
}

# Creates Log Anaylytics Workspace

resource "azurerm_log_analytics_workspace" "law" {
  name                = var.workspacename
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  sku                 = "PerGB2018"
  retention_in_days   = 30
}

# Creates App Service plan

resource "azurerm_service_plan" "appserviceplan" {
  name                = "app-serviceplam1983634moha"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  os_type             = "Linux"
  sku_name            = "B1"
  tags = {
    owner = var.owner
    environment = var.environment
  }
}

# Create the web app, pass in the App Service Plan ID
resource "azurerm_linux_web_app" "webapp" {
  name                  = var.webappname
  location              = azurerm_resource_group.rg.location
  resource_group_name   = azurerm_resource_group.rg.name
  service_plan_id       = azurerm_service_plan.appserviceplan.id
  https_only            = true
  site_config { 
    minimum_tls_version = "1.2"
  }
tags = {
    owner = var.owner
    environment = var.environment
  }
}

#  Deploy code from a public GitHub repo
resource "azurerm_app_service_source_control" "sourcecontrol" {
  app_id             = azurerm_linux_web_app.webapp.id
  repo_url           = "https://github.com/Azure-Samples/nodejs-docs-hello-world"
  branch             = "master"
  use_manual_integration = true
  use_mercurial      = false
}

# output "app_service_url" {
#  value       = azurerm_app_service.app-service.default_site_hostname
#  description = "Default URL to access the app service."
# }
