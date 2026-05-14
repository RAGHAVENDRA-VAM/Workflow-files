# main.tf

resource "azurerm_service_plan" "this" {
  name                = "${var.app_name}-plan"
  location            = var.location
  resource_group_name = var.resource_group_name

  os_type     = var.os_type
  sku_name    = var.sku_name
  worker_count = var.worker_count

  tags = merge(
    {
      Name = "${var.app_name}-plan"
    },
    var.tags
  )
}

resource "azurerm_linux_web_app" "this" {
  count = var.os_type == "Linux" ? 1 : 0

  name                = var.app_name
  location            = var.location
  resource_group_name = var.resource_group_name

  service_plan_id = azurerm_service_plan.this.id

  https_only               = true
  client_affinity_enabled  = var.client_affinity_enabled

  site_config {
    always_on           = var.always_on
    ftps_state          = "Disabled"
    http2_enabled       = true
    minimum_tls_version = "1.2"

    health_check_path = var.health_check_path

    application_stack {
      python_version = lookup(var.application_stack, "python_version", null)
      node_version   = lookup(var.application_stack, "node_version", null)
      dotnet_version = lookup(var.application_stack, "dotnet_version", null)
    }
  }

  app_settings = var.app_settings

  identity {
    type = "SystemAssigned"
  }

  tags = merge(
    {
      Name = var.app_name
    },
    var.tags
  )
}

resource "azurerm_windows_web_app" "this" {
  count = var.os_type == "Windows" ? 1 : 0

  name                = var.app_name
  location            = var.location
  resource_group_name = var.resource_group_name

  service_plan_id = azurerm_service_plan.this.id

  https_only              = true
  client_affinity_enabled = var.client_affinity_enabled

  site_config {
    always_on           = var.always_on
    ftps_state          = "Disabled"
    http2_enabled       = true
    minimum_tls_version = "1.2"

    health_check_path = var.health_check_path
  }

  app_settings = var.app_settings

  identity {
    type = "SystemAssigned"
  }

  tags = merge(
    {
      Name = var.app_name
    },
    var.tags
  )
}
