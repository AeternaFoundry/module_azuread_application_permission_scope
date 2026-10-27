output "application_permission_scopes_id" {
  description = "Map of id values across all application_permission_scopes, keyed the same as var.application_permission_scopes"
  value       = { for k, v in azuread_application_permission_scope.application_permission_scopes : k => v.id }
}
output "application_permission_scopes_admin_consent_description" {
  description = "Map of admin_consent_description values across all application_permission_scopes, keyed the same as var.application_permission_scopes"
  value       = { for k, v in azuread_application_permission_scope.application_permission_scopes : k => v.admin_consent_description }
}
output "application_permission_scopes_admin_consent_display_name" {
  description = "Map of admin_consent_display_name values across all application_permission_scopes, keyed the same as var.application_permission_scopes"
  value       = { for k, v in azuread_application_permission_scope.application_permission_scopes : k => v.admin_consent_display_name }
}
output "application_permission_scopes_application_id" {
  description = "Map of application_id values across all application_permission_scopes, keyed the same as var.application_permission_scopes"
  value       = { for k, v in azuread_application_permission_scope.application_permission_scopes : k => v.application_id }
}
output "application_permission_scopes_scope_id" {
  description = "Map of scope_id values across all application_permission_scopes, keyed the same as var.application_permission_scopes"
  value       = { for k, v in azuread_application_permission_scope.application_permission_scopes : k => v.scope_id }
}
output "application_permission_scopes_type" {
  description = "Map of type values across all application_permission_scopes, keyed the same as var.application_permission_scopes"
  value       = { for k, v in azuread_application_permission_scope.application_permission_scopes : k => v.type }
}
output "application_permission_scopes_user_consent_description" {
  description = "Map of user_consent_description values across all application_permission_scopes, keyed the same as var.application_permission_scopes"
  value       = { for k, v in azuread_application_permission_scope.application_permission_scopes : k => v.user_consent_description }
}
output "application_permission_scopes_user_consent_display_name" {
  description = "Map of user_consent_display_name values across all application_permission_scopes, keyed the same as var.application_permission_scopes"
  value       = { for k, v in azuread_application_permission_scope.application_permission_scopes : k => v.user_consent_display_name }
}
output "application_permission_scopes_value" {
  description = "Map of value values across all application_permission_scopes, keyed the same as var.application_permission_scopes"
  value       = { for k, v in azuread_application_permission_scope.application_permission_scopes : k => v.value }
}

