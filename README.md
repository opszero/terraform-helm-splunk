<!-- BEGIN_TF_DOCS -->

# Pro Support

<a href="https://www.opszero.com"><img src="https://media.opszero.com/insights/brands/logo/2023/04/26/02/04/12/opsZero_logo.svg" width="300px"/></a>

[opsZero provides support](https://www.opszero.com/devops) for our modules including:

-   Slack & Email support
-   One on One Video Calls
-   Implementation Guidance
## Providers

| Name | Version |
|------|---------|
| <a name="provider_helm"></a> [helm](#provider\_helm) | n/a |
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_name"></a> [name](#input\_name) | Name  (e.g. `app` or `cluster`). | `string` | `"splunk"` | no |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | namespace of splunk   (e.g. `tools` or `prod`). | `string` | `"splunk"` | no |
| <a name="input_splunk_version"></a> [splunk\_version](#input\_splunk\_version) | version of splunk helm chart. | `string` | `"1.5.4"` | no |
## Resources

| Name | Type |
|------|------|
| [helm_release.splunk](https://registry.terraform.io/providers/hashicorp/helm/latest/docs/resources/release) | resource |
## Outputs

No outputs.
<!-- END_TF_DOCS -->