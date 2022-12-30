[![terraform](https://img.shields.io/badge/terraform-%23623CE4?style=flat-square&logo=terraform&logoColor=white)](https://www.terraform.io/)
[![pre-commit](https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white)](https://github.com/pre-commit/pre-commit)
### *WHO AM I ?*

I am terrafrom module which will create the workload Identity Binding with k8s service account.

I will create the following resoucres using the terrafrom.

- [GCP Service Account](https://cloud.google.com/iam/docs/service-accounts)
- [K8s Service Account](https://cloud.google.com/kubernetes-engine/docs/how-to/kubernetes-service-accounts)
- [Workload Identity](https://cloud.google.com/kubernetes-engine/docs/how-to/workload-identity)


### *Module Layout*

```
├── CODEOWNERS
├── CONTRIBUTING.md
├── LICENSE
├── Makefile
├── README.md
├── main.tf
├── version.tf
├── Terraform-docs.md
└── variable.tf

```


### *Variables*

I take the following variables and there are some defaults if not specified will take the deaults

```
variable "project_id" {}
variable "service_account_name" {}
variable "service_account_display_name" {}
variable "namespace" {}
variable "kubernetes_service_account" {}
variable "automount_service_account_token" {}
```
*For detailed description refer for varibale refere in here [variable.tf](variable.tf)*

### *Usage*

*Below is the example usage for this module.*

```
module "k8s_workload_identity" {
  source                         = ""git@github.com:ultimateai/terraform-tfe-workspacer.git?ref=PLT-356"
  project_id                     = "my-gcp-project-name"
  service_account_name           = "my-gcp-service-account-name"
  service_account_display_name   = "Display Name of the GCP Service Account"
  kubernetes_service_account     = "my-k8s-service-account-name"
  namespace                      = default
}
```

### *Terraform Docs*

[Terrafrom-docs.md](Terraform-docs.md)


### *References*

| Purpose | Name | Reference |
|---|---|---|
| Documentation | terraform-docs | https://github.com/terraform-docs/terraform-docs |
| Code Formatting | terraform fmt | https://www.terraform.io/docs/commands/fmt.html |
| Validation | terraform validate | https://www.terraform.io/docs/commands/validate.html |
| Linting | tflint | https://github.com/terraform-linters/tflint |
| Security | tfsec | https://github.com/tfsec/tfsec https://www.tfsec.dev/docs/home/ |
| k8s Workload Identity | k8s Workload Identity | https://cloud.google.com/kubernetes-engine/docs/how-to/workload-identity|