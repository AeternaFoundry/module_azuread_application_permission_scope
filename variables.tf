variable "application_permission_scopes" {
  description = <<EOT
Map of application_permission_scopes, attributes below
Required:
    - admin_consent_description
    - admin_consent_display_name
    - application_id
    - scope_id
    - value
Optional:
    - type
    - user_consent_description
    - user_consent_display_name
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    admin_consent_description  = string
    admin_consent_display_name = string
    application_id             = string
    scope_id                   = string
    value                      = string
    type                       = optional(string)
    user_consent_description   = optional(string)
    user_consent_display_name  = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.application_permission_scopes : (
        can(regex("^(/[^/]+/[^/]+)+$", v.application_id))
      )
    ])
    error_message = "must be a valid Azure resource ID"
  }
  validation {
    condition = alltrue([
      for k, v in var.application_permission_scopes : (
        can(regex("^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$", v.scope_id))
      )
    ])
    error_message = "must be a valid UUID"
  }
  validation {
    condition = alltrue([
      for k, v in var.application_permission_scopes : (
        length(v.admin_consent_description) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.application_permission_scopes : (
        length(v.admin_consent_display_name) > 0
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.application_permission_scopes : (
        v.user_consent_description == null || (length(v.user_consent_description) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  validation {
    condition = alltrue([
      for k, v in var.application_permission_scopes : (
        v.user_consent_display_name == null || (length(v.user_consent_display_name) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

