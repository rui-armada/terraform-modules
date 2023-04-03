<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_kind"></a> [kind](#requirement\_kind) | 0.0.11 |
| <a name="requirement_kubernetes"></a> [kubernetes](#requirement\_kubernetes) | 2.5.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_kind"></a> [kind](#provider\_kind) | 0.0.11 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [kind_cluster.default](https://registry.terraform.io/providers/kyma-incubator/kind/0.0.11/docs/resources/cluster) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_kind_cluster_config_path"></a> [kind\_cluster\_config\_path](#input\_kind\_cluster\_config\_path) | The location where this cluster's kubeconfig will be saved to. | `string` | `"~/.kube/config"` | no |
| <a name="input_kind_cluster_name"></a> [kind\_cluster\_name](#input\_kind\_cluster\_name) | The name of the cluster. | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->