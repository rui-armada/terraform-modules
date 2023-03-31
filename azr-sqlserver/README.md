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
| [azurerm_mssql_server.sqlserver](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/mssql_server) | resource |
| [azurerm_private_endpoint.endpoint](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/private_endpoint) | resource |
| [azurerm_resource_group.data](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |
| [azurerm_sql_database.db](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/sql_database) | resource |
| [azurerm_private_endpoint_connection.connection](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/private_endpoint_connection) | data source |
| [azurerm_subnet.subnetpriv](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/data-sources/subnet) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_db-name"></a> [db-name](#input\_db-name) | n/a | `string` | n/a | yes |
| <a name="input_enable_firewall_rules"></a> [enable\_firewall\_rules](#input\_enable\_firewall\_rules) | Manage an Azure SQL Firewall Rule | `bool` | `false` | no |
| <a name="input_env"></a> [env](#input\_env) | environment name (tst for nonprod and prd for prod) | `any` | n/a | yes |
| <a name="input_firewall_rules"></a> [firewall\_rules](#input\_firewall\_rules) | Range of IP addresses to allow firewall connections. | <pre>list(object({<br>    name             = string<br>    start_ip_address = string<br>    end_ip_address   = string<br>  }))</pre> | `[]` | no |
| <a name="input_resource_group_location"></a> [resource\_group\_location](#input\_resource\_group\_location) | Location of the resource group. | `string` | `"westeurope"` | no |
| <a name="input_resource_group_name_prefix"></a> [resource\_group\_name\_prefix](#input\_resource\_group\_name\_prefix) | Prefix of the resource group name that's combined with a random ID so name is unique in your Azure subscription. | `string` | `"rg"` | no |
| <a name="input_sqlserver_name_prefix"></a> [sqlserver\_name\_prefix](#input\_sqlserver\_name\_prefix) | Prefix of the route table name. | `string` | `"sqlserver"` | no |
| <a name="input_sqlversion"></a> [sqlversion](#input\_sqlversion) | n/a | `string` | n/a | yes |
| <a name="input_system"></a> [system](#input\_system) | n/a | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_sql_private_link_endpoint_ip"></a> [sql\_private\_link\_endpoint\_ip](#output\_sql\_private\_link\_endpoint\_ip) | SQL Private Link Endpoint IP |
<!-- END_TF_DOCS -->