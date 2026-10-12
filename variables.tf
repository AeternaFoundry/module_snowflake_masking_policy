variable "masking_policies" {
  description = <<EOT
Map of masking_policies, attributes below
Required:
    - body
    - database
    - name
    - return_data_type
    - schema
    - argument (block):
        - name (required)
        - type (required)
Optional:
    - comment
    - exempt_other_policies
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
        - update (optional)
EOT

  type = map(object({
    body                  = string
    database              = string
    name                  = string
    return_data_type      = string
    schema                = string
    comment               = optional(string)
    exempt_other_policies = optional(string)
    argument = list(object({
      name = string
      type = string
    }))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
      update = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.masking_policies : (
        length(v.argument) >= 1
      )
    ])
    error_message = "Each argument list must contain at least 1 items"
  }
}

