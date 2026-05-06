variable "app_name" {
  description = "Web app name (must be globally unique)"
  type        = string
  default     = "Insuerflow-web-application-j1h9"
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "eastus"
}

variable "resource_group_name" {
  description = "Resource group name"
  type        = string
  default     = "hari_check1"
}

variable "app_service_plan" {
  description = "App Service Plan configuration"
  type = object({
    name     = string
    sku      = string
    location = string
  })
  default = {
    name     = "insureflow-plan"
    sku      = "B1"
    location = "eastus"
  }
}

# The rest of the variables remain unchanged unless specific updates are needed.

# Note: If you need to instantiate resources, ensure the following:
# - Use var.app_service_plan.name for the app service plan name
# - Use var.app_service_plan.sku for the SKU
# - Reference var.resource_group_name for the resource group
# - Use var.location for location parameters

# Since only variable updates are requested, the above reflects the necessary changes.