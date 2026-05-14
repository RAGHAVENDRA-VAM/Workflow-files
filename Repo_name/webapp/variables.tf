variable "APP_NAME" {
  description = "Web app name (must be globally unique)"
  type        = string
}

variable "LOCATION" {
  description = "Azure region"
  type        = string
}

variable "RESOURCE_GROUP" {
  description = "Resource group name"
  type        = string
}

variable "APP_SERVICE_SKU" {
  description = "App Service Plan SKU (e.g., B1, B2, S1, P1v3, P2v3)"
  type        = string
  default     = "P1v3"
}