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
