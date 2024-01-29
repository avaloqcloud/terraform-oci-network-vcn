resource "oci_core_vcn" "this" {
  compartment_id = var.vcn.compartment_id

  #TODO: BYOD IPv6 functionality not tested, in case this is needed further engineering required
  dynamic "byoipv6cidr_details" {
    for_each = (var.vcn.byoipv6cidr_details != null) ? var.vcn.byoipv6cidr_details : []
    content {
      byoipv6range_id = oci_core_byoipv6range.test_byoipv6range.id
      ipv6cidr_block  = byoipv6cidr_details.ipv6cidr_block
    }
  }

  cidr_blocks                      = var.vcn.cidr_blocks
  defined_tags                     = var.vcn.defined_tags
  display_name                     = var.vcn.display_name
  dns_label                        = var.vcn.dns_label
  freeform_tags                    = var.vcn.freeform_tags
  ipv6private_cidr_blocks          = var.vcn.ipv6private_cidr_blocks
  is_ipv6enabled                   = var.vcn.is_ipv6enabled
  is_oracle_gua_allocation_enabled = var.vcn.is_oracle_gua_allocation_enabled
}
