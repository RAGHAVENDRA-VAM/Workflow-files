# terraform.tfvars

app_name           = "my-web-app-ui"
location           = "eastus"
resource_group_name = "my-resource-group"

sku_name = "B1"

os_type = "Linux"

worker_count = 1

always_on = true

application_stack = {
  language = "node 24"
  framework = "react"
  buildtool = "npm"
}

app_settings = {
  ENVIRONMENT = "dev"
  SCM_DO_BUILD_DURING_DEPLOYMENT = "true"
}

tags = {
  Environment = "Dev"
  Project     = "WebApp"
}