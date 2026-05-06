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

variable "sku_name" {
  description = "App Service Plan SKU (e.g., B1, B2, S1, P1v3, P2v3)"
  type        = string
  default     = "B1"
}

variable "os_type" {
  description = "OS type: Linux or Windows"
  type        = string
  default     = "Linux"
}

variable "worker_count" {
  description = "Number of workers in the App Service Plan"
  type        = number
  default     = 1
}

variable "zone_balancing_enabled" {
  description = "Enable zone balancing (requires Premium SKU)"
  type        = bool
  default     = false
}