terraform {
  required_providers {
    kind = {
      source  = "kyma-incubator/kind"
      version = "0.0.9"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "2.5.0"
    }
  }
}