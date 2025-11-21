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
    }
  ]

}

