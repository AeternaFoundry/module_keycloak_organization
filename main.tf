resource "keycloak_organization" "organizations" {
  for_each = var.organizations

  name         = each.value.name
  realm        = each.value.realm
  alias        = each.value.alias
  attributes   = each.value.attributes
  description  = each.value.description
  enabled      = each.value.enabled
  redirect_url = each.value.redirect_url

  dynamic "domain" {
    for_each = each.value.domain != null ? each.value.domain : []
    content {
      name     = domain.value.name
      verified = domain.value.verified
    }
  }
}

