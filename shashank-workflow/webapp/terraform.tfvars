app_name            = "my-web-app-ui"
location            = "eastus"
resource_group_name = "my-resource-group"
sku_name            = "B1"
os_type             = "Linux"
worker_count        = 1
always_on           = true

application_stack = {
  node_version = "20-lts"
}

app_settings = {
  ENVIRONMENT                    = "dev"
  SCM_DO_BUILD_DURING_DEPLOYMENT = "false"
}

tags = {
  Environment = "Dev"
  Project     = "WebApp"
}
