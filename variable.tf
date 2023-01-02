variable "project_id" {
  description = "The project id where the insfrastructure will be created"
  type        = string
}

variable "service_account_name" {
  description = "The name of the service account for this service"
  type        = string
}

variable "service_account_display_name" {
  description = "Service Account Dispaly Name for service"
  type        = string
}

variable "namespace" {
  description = "Namespace for where service will be created in k8s cluster"
  type        = string
}

variable "enable_kubernetes_service_account" {
  description = "If true This will enable creation of service account from the module instead of using existing one"
  type        = bool
  default     = false
}

variable "kubernetes_service_account" {
  description = "The name of the k8s service account which will be mapped with the gcp service account for workload identity"
  type        = string
}

variable "automount_service_account_token" {
  description = "Enable automatic mounting of the service account token"
  type        = bool
  default     = false
}

