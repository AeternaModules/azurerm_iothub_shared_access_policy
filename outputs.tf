output "iothub_shared_access_policies_id" {
  description = "Map of id values across all iothub_shared_access_policies, keyed the same as var.iothub_shared_access_policies"
  value       = { for k, v in azurerm_iothub_shared_access_policy.iothub_shared_access_policies : k => v.id }
}
output "iothub_shared_access_policies_device_connect" {
  description = "Map of device_connect values across all iothub_shared_access_policies, keyed the same as var.iothub_shared_access_policies"
  value       = { for k, v in azurerm_iothub_shared_access_policy.iothub_shared_access_policies : k => v.device_connect }
}
output "iothub_shared_access_policies_iothub_name" {
  description = "Map of iothub_name values across all iothub_shared_access_policies, keyed the same as var.iothub_shared_access_policies"
  value       = { for k, v in azurerm_iothub_shared_access_policy.iothub_shared_access_policies : k => v.iothub_name }
}
output "iothub_shared_access_policies_name" {
  description = "Map of name values across all iothub_shared_access_policies, keyed the same as var.iothub_shared_access_policies"
  value       = { for k, v in azurerm_iothub_shared_access_policy.iothub_shared_access_policies : k => v.name }
}
output "iothub_shared_access_policies_primary_connection_string" {
  description = "Map of primary_connection_string values across all iothub_shared_access_policies, keyed the same as var.iothub_shared_access_policies"
  value       = { for k, v in azurerm_iothub_shared_access_policy.iothub_shared_access_policies : k => v.primary_connection_string }
  sensitive   = true
}
output "iothub_shared_access_policies_primary_key" {
  description = "Map of primary_key values across all iothub_shared_access_policies, keyed the same as var.iothub_shared_access_policies"
  value       = { for k, v in azurerm_iothub_shared_access_policy.iothub_shared_access_policies : k => v.primary_key }
  sensitive   = true
}
output "iothub_shared_access_policies_registry_read" {
  description = "Map of registry_read values across all iothub_shared_access_policies, keyed the same as var.iothub_shared_access_policies"
  value       = { for k, v in azurerm_iothub_shared_access_policy.iothub_shared_access_policies : k => v.registry_read }
}
output "iothub_shared_access_policies_registry_write" {
  description = "Map of registry_write values across all iothub_shared_access_policies, keyed the same as var.iothub_shared_access_policies"
  value       = { for k, v in azurerm_iothub_shared_access_policy.iothub_shared_access_policies : k => v.registry_write }
}
output "iothub_shared_access_policies_resource_group_name" {
  description = "Map of resource_group_name values across all iothub_shared_access_policies, keyed the same as var.iothub_shared_access_policies"
  value       = { for k, v in azurerm_iothub_shared_access_policy.iothub_shared_access_policies : k => v.resource_group_name }
}
output "iothub_shared_access_policies_secondary_connection_string" {
  description = "Map of secondary_connection_string values across all iothub_shared_access_policies, keyed the same as var.iothub_shared_access_policies"
  value       = { for k, v in azurerm_iothub_shared_access_policy.iothub_shared_access_policies : k => v.secondary_connection_string }
  sensitive   = true
}
output "iothub_shared_access_policies_secondary_key" {
  description = "Map of secondary_key values across all iothub_shared_access_policies, keyed the same as var.iothub_shared_access_policies"
  value       = { for k, v in azurerm_iothub_shared_access_policy.iothub_shared_access_policies : k => v.secondary_key }
  sensitive   = true
}
output "iothub_shared_access_policies_service_connect" {
  description = "Map of service_connect values across all iothub_shared_access_policies, keyed the same as var.iothub_shared_access_policies"
  value       = { for k, v in azurerm_iothub_shared_access_policy.iothub_shared_access_policies : k => v.service_connect }
}

