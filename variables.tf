variable "generative_ai_generative_ai_private_endpoints_lookup" {
  description = <<EOT
Map of generative_ai_generative_ai_private_endpoints_lookup, attributes below
Required:
    - compartment_id
Optional:
    - display_name
    - resource_type
    - state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    compartment_id = string
    display_name   = optional(string)
    resource_type  = optional(string)
    state          = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

