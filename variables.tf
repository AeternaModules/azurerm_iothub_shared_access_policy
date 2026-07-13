variable "iothub_shared_access_policies" {
  description = <<EOT
Map of iothub_shared_access_policies, attributes below
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
    device_connect      = optional(bool)
    registry_read       = optional(bool)
    registry_write      = optional(bool)
    service_connect     = optional(bool)
  }))
  validation {
    condition = alltrue([
      for k, v in var.iothub_shared_access_policies : (
        length(v.resource_group_name) <= 90
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) > 90]"
  }
  validation {
    condition = alltrue([
      for k, v in var.iothub_shared_access_policies : (
        !endswith(v.resource_group_name, ".")
      )
    ])
    error_message = "[from resourcegroups.ValidateName: must not end with \".\"]"
  }
  validation {
    condition = alltrue([
      for k, v in var.iothub_shared_access_policies : (
        length(v.resource_group_name) != 0
      )
    ])
    error_message = "[from resourcegroups.ValidateName: invalid when len(value) == 0]"
  }
  # Note: 4 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

