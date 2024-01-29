# Terraform OCI Core VCN
The code provides a reusable and standalone Terraform module that provisions a VCN on Oracle Cloud Infrastructure.

## Example Input
`vcn.auto.tfvars.json`:
```json
{
  "vcn": {
    "compartment_id": "ocid1.compartment_id",
    "display_name": "subnet_1",
    "cidr_blocks": [
      "172.16.0.0/16"
    ],
    "dns_label": "module"
  }
}
```
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.2.9 |
| <a name="requirement_oci"></a> [oci](#requirement\_oci) | 5.18.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_oci"></a> [oci](#provider\_oci) | 5.18.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [oci_core_vcn.this](https://registry.terraform.io/providers/oracle/oci/5.18.0/docs/resources/core_vcn) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_vcn"></a> [vcn](#input\_vcn) | VCN Input Object | <pre>object({<br>    compartment_id = string,<br>    byoipv6cidr_details = optional(list(object({<br>      #Required<br>      byoipv6range_id = string,<br>      ipv6cidr_block  = string<br>    }))),<br>    cidr_blocks                      = list(string),<br>    defined_tags                     = optional(map(string)),<br>    display_name                     = string,<br>    dns_label                        = optional(string)<br>    freeform_tags                    = optional(map(string)),<br>    ipv6private_cidr_blocks          = optional(list(string)),<br>    is_ipv6enabled                   = optional(bool),<br>    is_oracle_gua_allocation_enabled = optional(bool)<br>  })</pre> | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_vcn"></a> [vcn](#output\_vcn) | VCN output object |
<!-- END_TF_DOCS -->