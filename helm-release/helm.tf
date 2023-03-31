
resource "helm_release" "example" {
  name       = var.name
  chart      = var.helmchart
  namespace        = var.namespace
  create_namespace = true
  repository = var.repository
  values = [file(var.values)]

}