# terraform.tfvars

app_name           = ""
location           = ""
resource_group_name = ""

sku_name = ""

os_type = "Linux"

worker_count = 1

always_on = true

application_stack = {
  python_version = "3.11"
}

app_settings = {
  ENVIRONMENT = "dev"
  SCM_DO_BUILD_DURING_DEPLOYMENT = "true"
}

tags = {
  Environment = "Dev"
  Project     = "WebApp"
}