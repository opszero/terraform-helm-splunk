#lables
variable "name" {
  type        = string
  default     = "splunk"
  description = "Name  (e.g. `app` or `cluster`)."
}

#airbye
variable "namespace" {
  type        = string
  default     = "splunk"
  description = "namespace of splunk   (e.g. `tools` or `prod`)."
}

variable "splunk_version" {
  type        = string
  default     = "1.5.4"
  description = "version of splunk helm chart."
}


variable "image" {
  description = "Splunk logging image config"
  type = object({
    registry    = string
    name        = string
    tag         = string
    pullPolicy  = string
  })

  default = {
    registry   = "docker.io"
    name       = "sohanyadav/fluentd-hec"
    tag        = "1.3.3"
    pullPolicy = "IfNotPresent"
  }
}
