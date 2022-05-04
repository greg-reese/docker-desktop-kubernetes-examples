
/* cc */

module "confluent_for_kubernetes" {
  source ="./modules/confluent_for_kubernetes"
}

module "confluent_for_kubernetes_simple_producer" {
  depends_on = [
    module.confluent_for_kubernetes
  ]
  source = "./modules/confluent_for_kubernetes/examples/simple_producer"
}

/* dashboard */

module "kubernetes_dashboard" {
  source ="./modules/kubernetes_dashboard"
}