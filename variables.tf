variable "vcn" {
  description = "VCN Input Object"
  type = object({
    compartment_id = string,
    byoipv6cidr_details = optional(list(object({
      #Required
      byoipv6range_id = string,
      ipv6cidr_block  = string
    }))),
    cidr_blocks                      = list(string),
    defined_tags                     = optional(map(string)),
    display_name                     = string,
    dns_label                        = optional(string)
    freeform_tags                    = optional(map(string)),
    ipv6private_cidr_blocks          = optional(list(string)),
    is_ipv6enabled                   = optional(bool),
    is_oracle_gua_allocation_enabled = optional(bool)
  })
  # Validation
  ## dns_label
  validation {
    condition     = var.vcn.dns_label != null ? can(regex("^[a-z](?:[a-z0-9]){1,15}$", var.vcn.dns_label)) : true
    error_message = "Validation of the VCN object failed. 'dns_label' requirement max 15 alphanumeric characters and must start with a letter."
  }
}

