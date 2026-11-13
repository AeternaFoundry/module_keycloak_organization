output "organizations_id" {
  description = "Map of id values across all organizations, keyed the same as var.organizations"
  value       = { for k, v in keycloak_organization.organizations : k => v.id }
}
output "organizations_alias" {
  description = "Map of alias values across all organizations, keyed the same as var.organizations"
  value       = { for k, v in keycloak_organization.organizations : k => v.alias }
}
output "organizations_attributes" {
  description = "Map of attributes values across all organizations, keyed the same as var.organizations"
  value       = { for k, v in keycloak_organization.organizations : k => v.attributes }
}
output "organizations_description" {
  description = "Map of description values across all organizations, keyed the same as var.organizations"
  value       = { for k, v in keycloak_organization.organizations : k => v.description }
}
output "organizations_domain" {
  description = "Map of domain values across all organizations, keyed the same as var.organizations"
  value       = { for k, v in keycloak_organization.organizations : k => v.domain }
}
output "organizations_enabled" {
  description = "Map of enabled values across all organizations, keyed the same as var.organizations"
  value       = { for k, v in keycloak_organization.organizations : k => v.enabled }
}
output "organizations_name" {
  description = "Map of name values across all organizations, keyed the same as var.organizations"
  value       = { for k, v in keycloak_organization.organizations : k => v.name }
}
output "organizations_realm" {
  description = "Map of realm values across all organizations, keyed the same as var.organizations"
  value       = { for k, v in keycloak_organization.organizations : k => v.realm }
}
output "organizations_redirect_url" {
  description = "Map of redirect_url values across all organizations, keyed the same as var.organizations"
  value       = { for k, v in keycloak_organization.organizations : k => v.redirect_url }
}

