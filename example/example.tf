provider "aws" {
  region = "us-east-1"
}

module "splunk" {
  source = "./.."
  name   = "splunk"
}