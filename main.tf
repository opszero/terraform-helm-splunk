resource "helm_release" "splunk" {
  chart            = "splunk-connect-for-kubernetes"
  name             = var.name
  namespace        = var.namespace
  create_namespace = true
  repository       = "https://splunk.github.io/splunk-connect-for-kubernetes/"
  version          = var.splunk_version
  values           = [file("splunk.yaml")]
  set = [
    {
      name  = "splunk-kubernetes-objects.enabled"
      value = false
    },
    {
      name  = "splunk-kubernetes-metrics.enabled"
      value = false
    },

    {
      name  = "splunk-kubernetes-logging.image.registry"
      value = var.image.registry
    },
    {
      name  = "splunk-kubernetes-logging.image.name"
      value = var.image.name
    },
    {
      name  = "splunk-kubernetes-logging.image.tag"
      value = var.image.tag
    },
    {
      name  = "splunk-kubernetes-logging.image.pullPolicy"
      value = var.image.pullPolicy
    }
  ]
}