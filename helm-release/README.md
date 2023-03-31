<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | 2.3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_helm"></a> [helm](#provider\_helm) | 2.3.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [helm_release.example](https://registry.terraform.io/providers/hashicorp/helm/2.3.0/docs/resources/release) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_depends_on"></a> [depends\_on](#input\_depends\_on) | depends\_on. | `string` | n/a | yes |
| <a name="input_helmchart"></a> [helmchart](#input\_helmchart) | Helmchart. | `string` | n/a | yes |
| <a name="input_kind_cluster_config_path"></a> [kind\_cluster\_config\_path](#input\_kind\_cluster\_config\_path) | The location where this cluster's kubeconfig will be saved to. | `string` | `"~/.kube/config"` | no |
| <a name="input_name"></a> [name](#input\_name) | Name. | `string` | n/a | yes |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | The namespace (it will be created if needed). | `string` | n/a | yes |
| <a name="input_repository"></a> [repository](#input\_repository) | Repository. | `string` | n/a | yes |
| <a name="input_values"></a> [values](#input\_values) | Path to values. | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->