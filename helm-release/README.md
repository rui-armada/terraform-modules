<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_helm"></a> [helm](#provider\_helm) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [helm_release.example](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_helmchart"></a> [helmchart](#input\_helmchart) | Helmchart. | `string` | n/a | yes |
| <a name="input_name"></a> [name](#input\_name) | Name. | `string` | n/a | yes |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | The namespace (it will be created if needed). | `string` | n/a | yes |
| <a name="input_values"></a> [values](#input\_values) | Path to values. | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->