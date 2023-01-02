<!-- BEGIN_TF_DOCS -->
<!-- BEGIN\_TF\_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement\_terraform"></a> [terraform](#requirement\\_terraform) | >=1.0.0 |
| <a name="requirement\_google"></a> [google](#requirement\\_google) | ~> 3.30 |
| <a name="requirement\_google-beta"></a> [google-beta](#requirement\\_google-beta) | ~> 3.80.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider\_google"></a> [google](#provider\\_google) | 3.90.1 |
| <a name="provider\_kubernetes"></a> [kubernetes](#provider\\_kubernetes) | 2.16.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google\_service\_account.service\_accounts](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/service_account) | resource |
| [google\_service\_account\_iam\_member.workload\_identity\_binding](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/service_account\_iam\_member) | resource |
| [kubernetes\_service\_account.main](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/service_account) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input\_kubernetes\_service\_account"></a> [kubernetes\\_service\\_account](#input\\_kubernetes\\_service\\_account) | The name of the k8s service account which will be mapped with the gcp service account for workload identity | `string` | n/a | yes |
| <a name="input\_namespace"></a> [namespace](#input\\_namespace) | Namespace for where service will be created in k8s cluster | `string` | n/a | yes |
| <a name="input\_project\_id"></a> [project\\_id](#input\\_project\\_id) | The project id where the insfrastructure will be created | `string` | n/a | yes |
| <a name="input\_service\_account\_display\_name"></a> [service\\_account\\_display\\_name](#input\\_service\\_account\\_display\\_name) | Service Account Dispaly Name for service | `string` | n/a | yes |
| <a name="input\_service\_account\_name"></a> [service\\_account\\_name](#input\\_service\\_account\\_name) | The name of the service account for this service | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END\_TF\_DOCS -->

## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >=1.0.0 |
| <a name="requirement_google"></a> [google](#requirement\_google) | ~> 3.30 |
| <a name="requirement_google-beta"></a> [google-beta](#requirement\_google-beta) | ~> 3.80.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | 3.90.1 |
| <a name="provider_kubernetes"></a> [kubernetes](#provider\_kubernetes) | 2.16.1 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_service_account.service_accounts](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/service_account) | resource |
| [google_service_account_iam_member.workload_identity_binding](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/service_account_iam_member) | resource |
| [kubernetes_service_account.main](https://registry.terraform.io/providers/hashicorp/kubernetes/latest/docs/resources/service_account) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_kubernetes_service_account"></a> [kubernetes\_service\_account](#input\_kubernetes\_service\_account) | The name of the k8s service account which will be mapped with the gcp service account for workload identity | `string` | n/a | yes |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | Namespace for where service will be created in k8s cluster | `string` | n/a | yes |
| <a name="input_project_id"></a> [project\_id](#input\_project\_id) | The project id where the insfrastructure will be created | `string` | n/a | yes |
| <a name="input_service_account_display_name"></a> [service\_account\_display\_name](#input\_service\_account\_display\_name) | Service Account Dispaly Name for service | `string` | n/a | yes |
| <a name="input_service_account_name"></a> [service\_account\_name](#input\_service\_account\_name) | The name of the service account for this service | `string` | n/a | yes |

## Outputs

No outputs.
<!-- END_TF_DOCS -->