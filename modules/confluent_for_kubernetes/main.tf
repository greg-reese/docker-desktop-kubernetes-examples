resource "kubernetes_namespace" "confluent" {
  metadata {
    name = "confluent"
  }
}

resource "helm_release" "confluent_operator" {
  depends_on = [
    kubernetes_namespace.confluent
  ]
  name       = "confluent-operator"
  namespace  = kubernetes_namespace.confluent.id
  repository = "https://packages.confluent.io/helm"
  chart      = "confluent-for-kubernetes"
}