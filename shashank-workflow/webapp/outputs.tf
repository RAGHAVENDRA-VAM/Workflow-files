# outputs.tf

output "web_app_name" {
  value = var.os_type == "Linux" ?
    azurerm_linux_web_app.this[0].name :
    azurerm_windows_web_app.this[0].name
}

output "web_app_url" {
  value = var.os_type == "Linux" ?
    azurerm_linux_web_app.this[0].default_hostname :
    azurerm_windows_web_app.this[0].default_hostname
}
