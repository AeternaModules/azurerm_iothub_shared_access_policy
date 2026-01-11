variable "iothub_shared_access_policys" {
  description = <<EOT
Map of iothub_shared_access_policys, attributes below
Required:
    - iothub_name
    - name
    - resource_group_name
Optional:
    - device_connect
    - registry_read
    - registry_write
    - service_connect
EOT

  type = map(object({
    iothub_name         = string
    name                = string
    resource_group_name = string
    device_connect      = optional(bool, false)
    registry_read       = optional(bool, false)
    registry_write      = optional(bool, false)
    service_connect     = optional(bool, false)
  }))
}

