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
