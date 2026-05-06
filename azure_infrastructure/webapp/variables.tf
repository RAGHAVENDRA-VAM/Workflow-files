variable "app_name" {
  description = "Web app name (must be globally unique)"
  type        = string
  default     = "my-webapp"
}

variable "location" {
  description = "Azure region"
  type        = string
  default     = "us-east"
}

variable "resource_group_name" {
  description = "Resource group name"
  type        = string
  default     = "shashank-tudum"
}