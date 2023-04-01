<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_azurerm"></a> [azurerm](#provider\_azurerm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [azurerm_route_table.rt-paas-tst](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/route_table) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_address_prefix"></a> [address\_prefix](#input\_address\_prefix) | address | `any` | n/a | yes |
| <a name="input_env"></a> [env](#input\_env) | environment name (tst for nonprod and prd for prod) | `any` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | name of route table | `any` | n/a | yes |
| <a name="input_next_hop_in_ip_address"></a> [next\_hop\_in\_ip\_address](#input\_next\_hop\_in\_ip\_address) | next hop in ip address | `any` | n/a | yes |
| <a name="input_next_hop_type"></a> [next\_hop\_type](#input\_next\_hop\_type) | hop type | `any` | n/a | yes |
| <a name="input_resource_group_location"></a> [resource\_group\_location](#input\_resource\_group\_location) | Location of the resource group. | `string` | `"westeurope"` | no |
| <a name="input_resource_group_name_prefix"></a> [resource\_group\_name\_prefix](#input\_resource\_group\_name\_prefix) | Prefix of the resource group name that's combined with a random ID so name is unique in your Azure subscription. | `string` | `"rg"` | no |
| <a name="input_route_name"></a> [route\_name](#input\_route\_name) | route name | `any` | n/a | yes |
| <a name="input_route_table_name_prefix"></a> [route\_table\_name\_prefix](#input\_route\_table\_name\_prefix) | Prefix of the route table name. | `string` | `"rt"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->