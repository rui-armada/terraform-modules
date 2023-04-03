resource "kubectl_manifest" "mymanifest" {
  yaml_body = var.file
}