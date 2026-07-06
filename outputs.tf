output "iothub_shared_access_policies" {
  description = "All iothub_shared_access_policy resources"
  value       = azurerm_iothub_shared_access_policy.iothub_shared_access_policies
  sensitive   = true
}
output "iothub_shared_access_policies_device_connect" {
  description = "List of device_connect values across all iothub_shared_access_policies"
  value       = [for k, v in azurerm_iothub_shared_access_policy.iothub_shared_access_policies : v.device_connect]
}
output "iothub_shared_access_policies_iothub_name" {
  description = "List of iothub_name values across all iothub_shared_access_policies"
  value       = [for k, v in azurerm_iothub_shared_access_policy.iothub_shared_access_policies : v.iothub_name]
}
output "iothub_shared_access_policies_name" {
  description = "List of name values across all iothub_shared_access_policies"
  value       = [for k, v in azurerm_iothub_shared_access_policy.iothub_shared_access_policies : v.name]
}
output "iothub_shared_access_policies_primary_connection_string" {
  description = "List of primary_connection_string values across all iothub_shared_access_policies"
  value       = [for k, v in azurerm_iothub_shared_access_policy.iothub_shared_access_policies : v.primary_connection_string]
  sensitive   = true
}
output "iothub_shared_access_policies_primary_key" {
  description = "List of primary_key values across all iothub_shared_access_policies"
  value       = [for k, v in azurerm_iothub_shared_access_policy.iothub_shared_access_policies : v.primary_key]
  sensitive   = true
}
output "iothub_shared_access_policies_registry_read" {
  description = "List of registry_read values across all iothub_shared_access_policies"
  value       = [for k, v in azurerm_iothub_shared_access_policy.iothub_shared_access_policies : v.registry_read]
}
output "iothub_shared_access_policies_registry_write" {
  description = "List of registry_write values across all iothub_shared_access_policies"
  value       = [for k, v in azurerm_iothub_shared_access_policy.iothub_shared_access_policies : v.registry_write]
}
output "iothub_shared_access_policies_resource_group_name" {
  description = "List of resource_group_name values across all iothub_shared_access_policies"
  value       = [for k, v in azurerm_iothub_shared_access_policy.iothub_shared_access_policies : v.resource_group_name]
}
output "iothub_shared_access_policies_secondary_connection_string" {
  description = "List of secondary_connection_string values across all iothub_shared_access_policies"
  value       = [for k, v in azurerm_iothub_shared_access_policy.iothub_shared_access_policies : v.secondary_connection_string]
  sensitive   = true
}
output "iothub_shared_access_policies_secondary_key" {
  description = "List of secondary_key values across all iothub_shared_access_policies"
  value       = [for k, v in azurerm_iothub_shared_access_policy.iothub_shared_access_policies : v.secondary_key]
  sensitive   = true
}
output "iothub_shared_access_policies_service_connect" {
  description = "List of service_connect values across all iothub_shared_access_policies"
  value       = [for k, v in azurerm_iothub_shared_access_policy.iothub_shared_access_policies : v.service_connect]
}

