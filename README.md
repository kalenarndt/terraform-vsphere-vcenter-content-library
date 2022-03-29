# terraform-vsphere-vcenter-content-library

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_vsphere"></a> [vsphere](#requirement\_vsphere) | ~>2.1.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_vsphere"></a> [vsphere](#provider\_vsphere) | 2.1.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [vsphere_content_library.content_library](https://registry.terraform.io/providers/hashicorp/vsphere/latest/docs/resources/content_library) | resource |
| [vsphere_datacenter.datacenter](https://registry.terraform.io/providers/hashicorp/vsphere/latest/docs/data-sources/datacenter) | data source |
| [vsphere_datastore.datastore](https://registry.terraform.io/providers/hashicorp/vsphere/latest/docs/data-sources/datastore) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_content_library"></a> [content\_library](#input\_content\_library) | (Required) Map containing the configuration for the Content Library | <pre>map(object({<br>    name                  = string<br>    description           = string<br>    subscription_url      = optional(string)<br>    automatic_sync        = optional(bool)<br>    on_demand_sync        = optional(bool)<br>    authentication_method = optional(string)<br>    username              = optional(string)<br>    password              = optional(string)<br>  }))</pre> | n/a | yes |
| <a name="input_datacenter"></a> [datacenter](#input\_datacenter) | (Required) Datacenter where the Content Library will be created | `string` | n/a | yes |
| <a name="input_datastore"></a> [datastore](#input\_datastore) | (Required) Datastore where the Content Library will be placed | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_content_library"></a> [content\_library](#output\_content\_library) | Output of the created Content Libraries |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
