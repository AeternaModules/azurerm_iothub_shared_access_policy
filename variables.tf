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
    device_connect      = optional(bool) # Default: false
    registry_read       = optional(bool) # Default: false
    registry_write      = optional(bool) # Default: false
    service_connect     = optional(bool) # Default: false
  }))
  # --- Unconfirmed validation candidates, derived from azurerm_iothub_shared_access_policy's provider source ---
  # Not auto-enabled: either a bespoke provider validator we can't safely translate,
  # or a path that crosses a list-typed block (needs its own for_each wrapping).
  # Review, translate into a real validation{} block above, and delete once confirmed.
  # path: name
  #   source:    [from validate.IotHubSharedAccessPolicyName] !ok
  # path: name
  #   source:    [from validate.IotHubSharedAccessPolicyName] !regexp.MustCompile(`[a-zA-Z0-9!._-]{1,64}`).MatchString(v)
  # path: resource_group_name
  #   condition: length(value) <= 90
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) > 90]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) > 90]
  # path: resource_group_name
  #   condition: !endswith(value, ".")
  #   message:   [from resourcegroups.ValidateName: must not end with "."]
  #   source:    [from resourcegroups.ValidateName: must not end with "."]
  # path: resource_group_name
  #   condition: length(value) != 0
  #   message:   [from resourcegroups.ValidateName: invalid when len(value) == 0]
  #   source:    [from resourcegroups.ValidateName: invalid when len(value) == 0]
  # path: resource_group_name
  #   source:    [from resourcegroups.ValidateName] !matched
  # path: iothub_name
  #   source:    [from validate.IoTHubName] !matched
}

