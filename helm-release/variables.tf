variable "namespace" {
  type        = string
  description = "The namespace (it will be created if needed)."
}

variable "name" {
  type        = string
  description = "Name."
}

variable "helmchart" {
  type        = string
  description = "Helmchart."
}

variable "values" {
  type        = string
  description = "Path to values."
}

variable "kind_cluster_config_path" {
  type        = string
  description = "The location where this cluster's kubeconfig will be saved to."
  default     = "~/.kube/config"
}

variable "repository" {
  type        = string
  description = "Repository."
}
