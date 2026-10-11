output "organizations_id" {
  description = "Map of id values across all organizations, keyed the same as var.organizations except keys with no id are omitted"
  value       = { for k, v in keycloak_organization.organizations : k => v.id if v.id != null && length(v.id) > 0 }
}
output "organizations_alias" {
  description = "Map of alias values across all organizations, keyed the same as var.organizations except keys with no alias are omitted"
  value       = { for k, v in keycloak_organization.organizations : k => v.alias if v.alias != null && length(v.alias) > 0 }
}
output "organizations_attributes" {
  description = "Map of attributes values across all organizations, keyed the same as var.organizations except keys with no attributes are omitted"
  value       = { for k, v in keycloak_organization.organizations : k => v.attributes if v.attributes != null && length(v.attributes) > 0 }
}
output "organizations_description" {
  description = "Map of description values across all organizations, keyed the same as var.organizations except keys with no description are omitted"
  value       = { for k, v in keycloak_organization.organizations : k => v.description if v.description != null && length(v.description) > 0 }
}
output "organizations_domain" {
  description = "Map of domain values across all organizations, keyed the same as var.organizations except keys with no domain are omitted"
  value       = { for k, v in keycloak_organization.organizations : k => v.domain if v.domain != null && length(v.domain) > 0 }
}
output "organizations_enabled" {
  description = "Map of enabled values across all organizations, keyed the same as var.organizations except keys with no enabled are omitted"
  value       = { for k, v in keycloak_organization.organizations : k => v.enabled if v.enabled != null }
}
output "organizations_name" {
  description = "Map of name values across all organizations, keyed the same as var.organizations except keys with no name are omitted"
  value       = { for k, v in keycloak_organization.organizations : k => v.name if v.name != null && length(v.name) > 0 }
}
output "organizations_realm" {
  description = "Map of realm values across all organizations, keyed the same as var.organizations except keys with no realm are omitted"
  value       = { for k, v in keycloak_organization.organizations : k => v.realm if v.realm != null && length(v.realm) > 0 }
}
output "organizations_redirect_url" {
  description = "Map of redirect_url values across all organizations, keyed the same as var.organizations except keys with no redirect_url are omitted"
  value       = { for k, v in keycloak_organization.organizations : k => v.redirect_url if v.redirect_url != null && length(v.redirect_url) > 0 }
}

