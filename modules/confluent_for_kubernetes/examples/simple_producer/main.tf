resource "kubernetes_manifest" "application_secret" {
  manifest = yamldecode(file("${path.module}/yaml//secret.yaml"))
}

resource "kubernetes_manifest" "application_statefulset" {
  manifest = yamldecode(file("${path.module}/yaml/statefulset.yaml"))
}

resource "kubernetes_manifest" "application_service" {
  manifest = yamldecode(file("${path.module}/yaml/service.yaml"))
}

resource "kubernetes_manifest" "application_kafkatopic" {
  manifest = yamldecode(file("${path.module}/yaml/kafkatopic.yaml"))
}