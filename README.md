[![Deploy to Oracle Cloud](https://oci-resourcemanager-plugin.plugins.oci.oraclecloud.com/latest/deploy-to-oracle-cloud.svg)](https://cloud.oracle.com/resourcemanager/stacks/create?zipUrl=https://github.com/avaloqcloud/<REPOSITORY>/archive/refs/heads/main.zip)

# Terraform <terraform-module-name> module

Terraform module <short description>.

## Table of contents

* [Prerequisites](#prerequisites)
* [Requirements](#requirements)
* [Inputs](#inputs)
* [Outputs](#outputs)
* [Usage](#usage)

## Prerequisites

Write here steps that are expected to have been already performed or components already created.

## Requirements

List here requirements to successfully use the module:

* [Terraform](https://developer.hashicorp.com/terraform/downloads) ~> 1.2.8
* [OCI Terraform Provider](https://registry.terraform.io/providers/oracle/oci/5.18.0/docs) ~> 5.18.0
* [Module 1 provider 1](https://developer.hashicorp.com/provider_1/module_1) ~> 1.0
* [Module 2 provider 2](https://developer.hashicorp.com/provider_2/module_2) ~> 2.5

## Inputs

- [**`variable_1`**](#var-variable_1): *(**Required** `string`)*<a name="var-variable_1"></a>
   Description of Variable 1.
- [**`variable_2`**](#var-variable_2): *(**Required** `object()`)*<a name="var-variable_2"></a>
   Description of Variable 2.
   The `settings` object accepts the following attributes:
   - [**`variable_2_1`**](#var-variable_2-attr-variable_2_1): *(**Required** `string`)*<a name="var-variable_2-attr-variable_2_1"></a>
     Description of object's attribute 1 of variable 2.

## Outputs

The following attributes are exported by the module:

- [**`output_1`**](#output-output_1): *(`string`)*<a name="output-output_1"></a>
  Description of output 1.

## Usage

Write here how to use the module functionality (incl. importing existing resources if applicable).

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

No outputs.
<!-- END_TF_DOCS -->