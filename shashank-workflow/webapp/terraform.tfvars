# ─── Basic Configuration ─────────────────────────────────────────────────────

app_name            = "my-web-app-demo123"
location            = "East US"
resource_group_name = "my-resource-group"

# ─── App Service Plan ────────────────────────────────────────────────────────

sku_name               = "B1"
os_type                = "Linux"
worker_count           = 1
zone_balancing_enabled = false

# ─── Web App Settings ────────────────────────────────────────────────────────

always_on               = true
client_affinity_enabled = false
site_worker_count       = 1

health_check_path = "/health"

# ─── Runtime Stack ───────────────────────────────────────────────────────────

application_stack = {
  node_version = "18-lts"
}

# Example for Python:
# application_stack = {
#   python_version = "3.11"
# }

# Example for .NET:
# application_stack = {
#   dotnet_version = "8.0"
# }

# ─── Application Settings ────────────────────────────────────────────────────

app_settings = {
  WEBSITE_RUN_FROM_PACKAGE = "1"
  ENVIRONMENT              = "dev"
}

# ─── Connection Strings ──────────────────────────────────────────────────────

connection_strings = {
  DefaultConnection = {
    type  = "SQLAzure"
    value = "Server=tcp:myserver.database.windows.net;Database=mydb;User ID=admin;Password=password123;"
  }
}

# ─── Sticky Settings ─────────────────────────────────────────────────────────

sticky_app_settings = [
  "ENVIRONMENT"
]

sticky_connection_string_names = [
  "DefaultConnection"
]

# ─── IP Restrictions ─────────────────────────────────────────────────────────

ip_restrictions = [
  {
    name       = "AllowOffice"
    ip_address = "1.2.3.4/32"
    priority   = 100
    action     = "Allow"
  }
]

# ─── CORS ────────────────────────────────────────────────────────────────────

cors = {
  allowed_origins     = ["https://example.com"]
  support_credentials = true
}

# ─── Logging ─────────────────────────────────────────────────────────────────

enable_logging    = true
log_retention_days = 7

# ─── Deployment Slots ────────────────────────────────────────────────────────

deployment_slots = {
  staging = {
    always_on = true

    app_settings = {
      ENVIRONMENT = "staging"
    }
  }
}

# ─── Custom Domains ──────────────────────────────────────────────────────────

custom_hostnames = [
  "app.example.com"
]

# ─── Autoscale ───────────────────────────────────────────────────────────────

autoscale = {
  min_count     = 1
  max_count     = 3
  default_count = 1
}

# ─── Tags ────────────────────────────────────────────────────────────────────

tags = {
  environment = "dev"
  project     = "webapp"
  owner       = "raghava"
}
