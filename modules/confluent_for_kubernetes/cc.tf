
/* manifests */ 
resource "kubernetes_manifest" "confluent_cloud_zookeeper" {
  depends_on = [
    helm_release.confluent_operator
  ]

  manifest = yamldecode(file("${path.module}/yaml/zookeeper.yaml"))
}

resource "kubernetes_manifest" "confluent_cloud_kafka" {
  depends_on = [
    helm_release.confluent_operator
  ]

  manifest = yamldecode(file("${path.module}/yaml/kafka.yaml"))
}

resource "kubernetes_manifest" "confluent_cloud_connect" {
  depends_on = [
    helm_release.confluent_operator
  ]

  manifest = yamldecode(file("${path.module}/yaml/connect.yaml"))
}

resource "kubernetes_manifest" "confluent_cloud_ksqldb" {
  depends_on = [
    helm_release.confluent_operator
  ]

  manifest = yamldecode(file("${path.module}/yaml/ksqldb.yaml"))
}

resource "kubernetes_manifest" "confluent_cloud_controlcenter" {
  depends_on = [
    helm_release.confluent_operator
  ]

  manifest = yamldecode(file("${path.module}/yaml/controlcenter.yaml"))
}

resource "kubernetes_manifest" "confluent_cloud_schemaregistry" {
  depends_on = [
    helm_release.confluent_operator
  ]

  manifest = yamldecode(file("${path.module}/yaml/schemaregistry.yaml"))
}

resource "kubernetes_manifest" "confluent_cloud_kafkarestproxy" {
  depends_on = [
    helm_release.confluent_operator
  ]

  manifest = yamldecode(file("${path.module}/yaml/kafkarestproxy.yaml"))
}
