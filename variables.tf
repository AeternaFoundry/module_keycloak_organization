variable "organizations" {
  description = <<EOT
Map of organizations, attributes below
Required:
    - name
    - realm
Optional:
    - alias
    - attributes
    - description
    - enabled
    - redirect_url
    - domain (block):
        - name (required)
        - verified (optional)
EOT

  type = map(object({
    name         = string
    realm        = string
    alias        = optional(string)
    attributes   = optional(map(string))
    description  = optional(string)
    enabled      = optional(bool)
    redirect_url = optional(string)
    domain = optional(list(object({
      name     = string
      verified = optional(bool)
    })))
  }))
}

