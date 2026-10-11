variable "ec2_local_gateway_lookup" {
  description = <<EOT
Map of ec2_local_gateway_lookup, attributes below
Optional:
    - region
    - state
    - tags
    - filter (block):
        - name (required)
        - values (required)
EOT

  type = map(object({
    region = optional(string)
    state  = optional(string)
    tags   = optional(map(string))
    filter = optional(list(object({
      name   = string
      values = set(string)
    })))
  }))
}

