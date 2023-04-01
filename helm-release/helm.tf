
resource "helm_release" "ingress_nginx" {
  name       = var.name
  repository = var.repository
  chart      = var.helmchart
  version    = "4.0.6"

  namespace        = var.namespace
  create_namespace = true

  values = [file(var.values)]

}

resource "null_resource" "wait_for_ingress_nginx" {
  triggers = {
    key = uuid()
  }

  provisioner "local-exec" {
    command = <<EOF
      printf "\nWaiting for the nginx ingress controller...\n"
      kubectl wait --namespace ${helm_release.example.namespace} \
        --for=condition=ready pod \
        --selector=app.kubernetes.io/component=controller \
        --timeout=90s
    EOF
  }

  depends_on = [helm_release.example]
}