app_name            = "Testingwebapp"
location            = "eastus"
resource_group_name = "devops-maf"
sku_name            = "B1"
os_type             = "Linux"
worker_count        = 1
always_on           = true

application_stack = {
  node_version = "20-lts"
  framework    = "react"
  language     = "react"
  buildtool    = "npm"
}

app_settings = {
  ENVIRONMENT                    = "dev"
  SCM_DO_BUILD_DURING_DEPLOYMENT = "false"
}

tags = {
  Environment = "Dev"
  Project     = "WebApp"
}