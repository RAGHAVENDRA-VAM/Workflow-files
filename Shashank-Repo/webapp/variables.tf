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