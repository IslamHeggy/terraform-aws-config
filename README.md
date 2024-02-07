
<!-- markdownlint-disable -->
# terraform-aws-config <a href="https://cpco.io/homepage"><img align="right" src="https://cloudposse.com/logo-300x69.svg" width="150" /></a>
<a href="https://github.com/cloudposse/terraform-aws-config/releases/latest"><img src="https://img.shields.io/github/release/cloudposse/terraform-aws-config.svg" alt="Latest Release"/></a><a href="https://slack.cloudposse.com"><img src="https://slack.cloudposse.com/badge.svg" alt="Slack Community"/></a><a href="https://ask.sweetops.com/"><img src="https://img.shields.io/discourse/https/ask.sweetops.com/posts.svg" alt="Discourse Forum"/></a>
<!-- markdownlint-restore -->

<!--




  ** DO NOT EDIT THIS FILE
  **
  ** This file was automatically generated by the `cloudposse/build-harness`.
  ** 1) Make all changes to `README.yaml`
  ** 2) Run `make init` (you only need to do this once)
  ** 3) Run`make readme` to rebuild this file.
  **
  ** (We maintain HUNDREDS of open source projects. This is how we maintain our sanity.)
  **





-->

This module enables [AWS Config](https://aws.amazon.com/config/) and optionally sets up an SNS topic to receive notifications of its findings.


---
> [!NOTE]
> This project is part of Cloud Posse's comprehensive ["SweetOps"](https://cpco.io/sweetops) approach towards DevOps.
> <details><summary>Learn More</summary>
> <a href="https://cpco.io/terraform-modules">
>   <picture>
>     <source media="(prefers-color-scheme: dark)" srcset="https://docs.cloudposse.com/images/terraform-open-source-modules-light.svg">
>     <source media="(prefers-color-scheme: light)" srcset="https://docs.cloudposse.com/images/terraform-open-source-modules-dark.svg">
>     <img alt="Terraform Open Source Modules" src="https://docs.cloudposse.com/images/terraform-open-source-modules.svg" align="right">
>   </picture>
> </a>
>
>
> It's 100% Open Source and licensed under the [APACHE2](LICENSE).
>
> We literally have [*hundreds of terraform modules*][terraform_modules] that are Open Source and well-maintained. Check them out!
> </details>

[![README Header][readme_header_img]][readme_header_link]




## Usage



> [!IMPORTANT]
> In Cloud Posse's examples, we avoid pinning modules to specific versions to prevent discrepancies between the documentation 
> and the latest released versions. However, for your own projects, we strongly advise pinning each module to the exact version
> you're using. This practice ensures the stability of your infrastructure. Additionally, we recommend implementing a systematic 
> approach for updating versions to avoid unexpected changes.



For a complete example, see [examples/complete](examples/complete).

For automated tests of the complete example using [bats](https://github.com/bats-core/bats-core) and [Terratest](https://github.com/gruntwork-io/terratest)
(which tests and deploys the example on AWS), see [test](test).

```hcl
module "example" {
  source = "cloudposse/config/aws"
  # Cloud Posse recommends pinning every module to a specific version
  # version     = "x.x.x"

  create_sns_topic = true
  create_iam_role  = true

  managed_rules = {
    account-part-of-organizations = {
      description  = "Checks whether AWS account is part of AWS Organizations. The rule is NON_COMPLIANT if an AWS account is not part of AWS Organizations or AWS Organizations master account ID does not match rule parameter MasterAccountId.",
      identifier   = "ACCOUNT_PART_OF_ORGANIZATIONS",
      trigger_type = "PERIODIC"
      enabled      = true
    }
  }
}
```




## Examples

Here is an example of using this module:
- [`examples/complete`](https://github.com/cloudposse/terraform-aws-config/) - complete example of using this module



<!-- markdownlint-disable -->
## Makefile Targets
```text
Available targets:

  help                                Help screen
  help/all                            Display help for all targets
  help/short                          This help short screen
  lint                                Lint terraform code

```
<!-- markdownlint-restore -->
<!-- markdownlint-disable -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.0 |
| <a name="requirement_http"></a> [http](#requirement\_http) | >= 3.4.1 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | >= 5.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_aws_config_aggregator_label"></a> [aws\_config\_aggregator\_label](#module\_aws\_config\_aggregator\_label) | cloudposse/label/null | 0.25.0 |
| <a name="module_aws_config_findings_label"></a> [aws\_config\_findings\_label](#module\_aws\_config\_findings\_label) | cloudposse/label/null | 0.25.0 |
| <a name="module_aws_config_label"></a> [aws\_config\_label](#module\_aws\_config\_label) | cloudposse/label/null | 0.25.0 |
| <a name="module_iam_role"></a> [iam\_role](#module\_iam\_role) | cloudposse/iam-role/aws | 0.15.0 |
| <a name="module_iam_role_organization_aggregator"></a> [iam\_role\_organization\_aggregator](#module\_iam\_role\_organization\_aggregator) | cloudposse/iam-role/aws | 0.15.0 |
| <a name="module_sns_topic"></a> [sns\_topic](#module\_sns\_topic) | cloudposse/sns-topic/aws | 0.20.1 |
| <a name="module_this"></a> [this](#module\_this) | cloudposse/label/null | 0.25.0 |

## Resources

| Name | Type |
|------|------|
| [aws_config_aggregate_authorization.central](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/config_aggregate_authorization) | resource |
| [aws_config_aggregate_authorization.child](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/config_aggregate_authorization) | resource |
| [aws_config_config_rule.rules](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/config_config_rule) | resource |
| [aws_config_configuration_aggregator.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/config_configuration_aggregator) | resource |
| [aws_config_configuration_recorder.recorder](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/config_configuration_recorder) | resource |
| [aws_config_configuration_recorder_status.recorder_status](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/config_configuration_recorder_status) | resource |
| [aws_config_delivery_channel.channel](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/config_delivery_channel) | resource |
| [aws_iam_role_policy_attachment.config_policy_attachment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_iam_role_policy_attachment.organization_config_policy_attachment](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_role_policy_attachment) | resource |
| [aws_caller_identity.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_iam_policy.aws_config_built_in_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy) | data source |
| [aws_iam_policy.aws_config_organization_role](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy) | data source |
| [aws_iam_policy_document.config_organization_aggregator_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.config_s3_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_iam_policy_document.config_sns_policy](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/iam_policy_document) | data source |
| [aws_partition.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/partition) | data source |
| [aws_region.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/region) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_additional_tag_map"></a> [additional\_tag\_map](#input\_additional\_tag\_map) | Additional key-value pairs to add to each map in `tags_as_list_of_maps`. Not added to `tags` or `id`.<br>This is for some rare cases where resources want additional configuration of tags<br>and therefore take a list of maps with tag key, value, and additional configuration. | `map(string)` | `{}` | no |
| <a name="input_allowed_aws_services_for_sns_published"></a> [allowed\_aws\_services\_for\_sns\_published](#input\_allowed\_aws\_services\_for\_sns\_published) | AWS services that will have permission to publish to SNS topic. Used when no external JSON policy is used | `list(string)` | `[]` | no |
| <a name="input_allowed_iam_arns_for_sns_publish"></a> [allowed\_iam\_arns\_for\_sns\_publish](#input\_allowed\_iam\_arns\_for\_sns\_publish) | IAM role/user ARNs that will have permission to publish to SNS topic. Used when no external json policy is used. | `list(string)` | `[]` | no |
| <a name="input_attributes"></a> [attributes](#input\_attributes) | ID element. Additional attributes (e.g. `workers` or `cluster`) to add to `id`,<br>in the order they appear in the list. New attributes are appended to the<br>end of the list. The elements of the list are joined by the `delimiter`<br>and treated as a single ID element. | `list(string)` | `[]` | no |
| <a name="input_central_resource_collector_account"></a> [central\_resource\_collector\_account](#input\_central\_resource\_collector\_account) | The account ID of a central account that will aggregate AWS Config from other accounts | `string` | `null` | no |
| <a name="input_child_resource_collector_accounts"></a> [child\_resource\_collector\_accounts](#input\_child\_resource\_collector\_accounts) | The account IDs of other accounts that will send their AWS Configuration to this account | `set(string)` | `null` | no |
| <a name="input_context"></a> [context](#input\_context) | Single object for setting entire context at once.<br>See description of individual variables for details.<br>Leave string and numeric variables as `null` to use default value.<br>Individual variable settings (non-null) override settings in context object,<br>except for attributes, tags, and additional\_tag\_map, which are merged. | `any` | <pre>{<br>  "additional_tag_map": {},<br>  "attributes": [],<br>  "delimiter": null,<br>  "descriptor_formats": {},<br>  "enabled": true,<br>  "environment": null,<br>  "id_length_limit": null,<br>  "label_key_case": null,<br>  "label_order": [],<br>  "label_value_case": null,<br>  "labels_as_tags": [<br>    "unset"<br>  ],<br>  "name": null,<br>  "namespace": null,<br>  "regex_replace_chars": null,<br>  "stage": null,<br>  "tags": {},<br>  "tenant": null<br>}</pre> | no |
| <a name="input_create_iam_role"></a> [create\_iam\_role](#input\_create\_iam\_role) | Flag to indicate whether an IAM Role should be created to grant the proper permissions for AWS Config | `bool` | `false` | no |
| <a name="input_create_organization_aggregator_iam_role"></a> [create\_organization\_aggregator\_iam\_role](#input\_create\_organization\_aggregator\_iam\_role) | Flag to indicate whether an IAM Role should be created to grant the proper permissions for AWS Config to send logs from organization accounts | `bool` | `false` | no |
| <a name="input_create_sns_topic"></a> [create\_sns\_topic](#input\_create\_sns\_topic) | Flag to indicate whether an SNS topic should be created for notifications<br>If you want to send findings to a new SNS topic, set this to true and provide a valid configuration for subscribers | `bool` | `false` | no |
| <a name="input_delimiter"></a> [delimiter](#input\_delimiter) | Delimiter to be used between ID elements.<br>Defaults to `-` (hyphen). Set to `""` to use no delimiter at all. | `string` | `null` | no |
| <a name="input_descriptor_formats"></a> [descriptor\_formats](#input\_descriptor\_formats) | Describe additional descriptors to be output in the `descriptors` output map.<br>Map of maps. Keys are names of descriptors. Values are maps of the form<br>`{<br>   format = string<br>   labels = list(string)<br>}`<br>(Type is `any` so the map values can later be enhanced to provide additional options.)<br>`format` is a Terraform format string to be passed to the `format()` function.<br>`labels` is a list of labels, in order, to pass to `format()` function.<br>Label values will be normalized before being passed to `format()` so they will be<br>identical to how they appear in `id`.<br>Default is `{}` (`descriptors` output will be empty). | `any` | `{}` | no |
| <a name="input_disabled_aggregation_regions"></a> [disabled\_aggregation\_regions](#input\_disabled\_aggregation\_regions) | A list of regions where config aggregation is disabled | `list(string)` | <pre>[<br>  "ap-northeast-3"<br>]</pre> | no |
| <a name="input_enabled"></a> [enabled](#input\_enabled) | Set to false to prevent the module from creating any resources | `bool` | `null` | no |
| <a name="input_environment"></a> [environment](#input\_environment) | ID element. Usually used for region e.g. 'uw2', 'us-west-2', OR role 'prod', 'staging', 'dev', 'UAT' | `string` | `null` | no |
| <a name="input_findings_notification_arn"></a> [findings\_notification\_arn](#input\_findings\_notification\_arn) | The ARN for an SNS topic to send findings notifications to. This is only used if create\_sns\_topic is false.<br>If you want to send findings to an existing SNS topic, set the value of this to the ARN of the existing topic and set<br>create\_sns\_topic to false. | `string` | `null` | no |
| <a name="input_force_destroy"></a> [force\_destroy](#input\_force\_destroy) | A boolean that indicates all objects should be deleted from the bucket so that the bucket can be destroyed without error. These objects are not recoverable | `bool` | `false` | no |
| <a name="input_global_resource_collector_region"></a> [global\_resource\_collector\_region](#input\_global\_resource\_collector\_region) | The region that collects AWS Config data for global resources such as IAM | `string` | n/a | yes |
| <a name="input_iam_role_arn"></a> [iam\_role\_arn](#input\_iam\_role\_arn) | The ARN for an IAM Role AWS Config uses to make read or write requests to the delivery channel and to describe the<br>AWS resources associated with the account. This is only used if create\_iam\_role is false.<br><br>If you want to use an existing IAM Role, set the value of this to the ARN of the existing topic and set<br>create\_iam\_role to false.<br><br>See the AWS Docs for further information:<br>http://docs.aws.amazon.com/config/latest/developerguide/iamrole-permissions.html | `string` | `null` | no |
| <a name="input_iam_role_organization_aggregator_arn"></a> [iam\_role\_organization\_aggregator\_arn](#input\_iam\_role\_organization\_aggregator\_arn) | The ARN for an IAM Role AWS Config uses for the organization aggregator that  fetches AWS config data from aws accounts. <br>This is only used if create\_organization\_aggregator\_iam\_role is false.<br><br>If you want to use an existing IAM Role, set the value of this to the ARN of the existing topic and set<br>create\_organization\_aggregator\_iam\_role to false.<br><br>See the AWS Docs for further information:<br>http://docs.aws.amazon.com/config/latest/developerguide/iamrole-permissions.html | `string` | `null` | no |
| <a name="input_id_length_limit"></a> [id\_length\_limit](#input\_id\_length\_limit) | Limit `id` to this many characters (minimum 6).<br>Set to `0` for unlimited length.<br>Set to `null` for keep the existing setting, which defaults to `0`.<br>Does not affect `id_full`. | `number` | `null` | no |
| <a name="input_is_organization_aggregator"></a> [is\_organization\_aggregator](#input\_is\_organization\_aggregator) | The aggregator is an AWS Organizations aggrgator | `bool` | `false` | no |
| <a name="input_label_key_case"></a> [label\_key\_case](#input\_label\_key\_case) | Controls the letter case of the `tags` keys (label names) for tags generated by this module.<br>Does not affect keys of tags passed in via the `tags` input.<br>Possible values: `lower`, `title`, `upper`.<br>Default value: `title`. | `string` | `null` | no |
| <a name="input_label_order"></a> [label\_order](#input\_label\_order) | The order in which the labels (ID elements) appear in the `id`.<br>Defaults to ["namespace", "environment", "stage", "name", "attributes"].<br>You can omit any of the 6 labels ("tenant" is the 6th), but at least one must be present. | `list(string)` | `null` | no |
| <a name="input_label_value_case"></a> [label\_value\_case](#input\_label\_value\_case) | Controls the letter case of ID elements (labels) as included in `id`,<br>set as tag values, and output by this module individually.<br>Does not affect values of tags passed in via the `tags` input.<br>Possible values: `lower`, `title`, `upper` and `none` (no transformation).<br>Set this to `title` and set `delimiter` to `""` to yield Pascal Case IDs.<br>Default value: `lower`. | `string` | `null` | no |
| <a name="input_labels_as_tags"></a> [labels\_as\_tags](#input\_labels\_as\_tags) | Set of labels (ID elements) to include as tags in the `tags` output.<br>Default is to include all labels.<br>Tags with empty values will not be included in the `tags` output.<br>Set to `[]` to suppress all generated tags.<br>**Notes:**<br>  The value of the `name` tag, if included, will be the `id`, not the `name`.<br>  Unlike other `null-label` inputs, the initial setting of `labels_as_tags` cannot be<br>  changed in later chained modules. Attempts to change it will be silently ignored. | `set(string)` | <pre>[<br>  "default"<br>]</pre> | no |
| <a name="input_managed_rules"></a> [managed\_rules](#input\_managed\_rules) | A list of AWS Managed Rules that should be enabled on the account.<br><br>See the following for a list of possible rules to enable:<br>https://docs.aws.amazon.com/config/latest/developerguide/managed-rules-by-aws-config.html | <pre>map(object({<br>    description      = string<br>    identifier       = string<br>    input_parameters = any<br>    tags             = map(string)<br>    enabled          = bool<br>  }))</pre> | `{}` | no |
| <a name="input_name"></a> [name](#input\_name) | ID element. Usually the component or solution name, e.g. 'app' or 'jenkins'.<br>This is the only ID element not also included as a `tag`.<br>The "name" tag is set to the full `id` string. There is no tag with the value of the `name` input. | `string` | `null` | no |
| <a name="input_namespace"></a> [namespace](#input\_namespace) | ID element. Usually an abbreviation of your organization name, e.g. 'eg' or 'cp', to help ensure generated IDs are globally unique | `string` | `null` | no |
| <a name="input_regex_replace_chars"></a> [regex\_replace\_chars](#input\_regex\_replace\_chars) | Terraform regular expression (regex) string.<br>Characters matching the regex will be removed from the ID elements.<br>If not set, `"/[^a-zA-Z0-9-]/"` is used to remove all characters other than hyphens, letters and digits. | `string` | `null` | no |
| <a name="input_s3_bucket_arn"></a> [s3\_bucket\_arn](#input\_s3\_bucket\_arn) | The ARN of the S3 bucket used to store the configuration history | `string` | n/a | yes |
| <a name="input_s3_bucket_id"></a> [s3\_bucket\_id](#input\_s3\_bucket\_id) | The id (name) of the S3 bucket used to store the configuration history | `string` | n/a | yes |
| <a name="input_s3_key_prefix"></a> [s3\_key\_prefix](#input\_s3\_key\_prefix) | The prefix for AWS Config objects stored in the the S3 bucket. If this variable is set to null, the default, no<br>prefix will be used.<br><br>Examples:<br><br>with prefix:    {S3\_BUCKET NAME}:/{S3\_KEY\_PREFIX}/AWSLogs/{ACCOUNT\_ID}/Config/*.<br>without prefix: {S3\_BUCKET NAME}:/AWSLogs/{ACCOUNT\_ID}/Config/*. | `string` | `null` | no |
| <a name="input_sns_encryption_key_id"></a> [sns\_encryption\_key\_id](#input\_sns\_encryption\_key\_id) | The ID of an AWS-managed customer master key (CMK) for Amazon SNS or a custom CMK. | `string` | `""` | no |
| <a name="input_sqs_queue_kms_master_key_id"></a> [sqs\_queue\_kms\_master\_key\_id](#input\_sqs\_queue\_kms\_master\_key\_id) | The ID of an AWS-managed customer master key (CMK) for Amazon SQS Queue or a custom CMK | `string` | `""` | no |
| <a name="input_stage"></a> [stage](#input\_stage) | ID element. Usually used to indicate role, e.g. 'prod', 'staging', 'source', 'build', 'test', 'deploy', 'release' | `string` | `null` | no |
| <a name="input_subscribers"></a> [subscribers](#input\_subscribers) | A map of subscription configurations for SNS topics<br><br>For more information, see:<br>https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sns_topic_subscription#argument-reference<br><br>protocol:<br>  The protocol to use. The possible values for this are: sqs, sms, lambda, application. (http or https are partially<br>  supported, see link) (email is an option but is unsupported in terraform, see link).<br>endpoint:<br>  The endpoint to send data to, the contents will vary with the protocol. (see link for more information)<br>endpoint\_auto\_confirms (Optional):<br>  Boolean indicating whether the end point is capable of auto confirming subscription e.g., PagerDuty. Default is<br>  false<br>raw\_message\_delivery (Optional):<br>  Boolean indicating whether or not to enable raw message delivery (the original message is directly passed, not wrapped in JSON with the original message in the message property). Default is false. | `map(any)` | `{}` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Additional tags (e.g. `{'BusinessUnit': 'XYZ'}`).<br>Neither the tag keys nor the tag values will be modified by this module. | `map(string)` | `{}` | no |
| <a name="input_tenant"></a> [tenant](#input\_tenant) | ID element \_(Rarely used, not included by default)\_. A customer identifier, indicating who this instance of a resource is for | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_config_configuration_recorder_id"></a> [aws\_config\_configuration\_recorder\_id](#output\_aws\_config\_configuration\_recorder\_id) | The ID of the AWS Config Recorder |
| <a name="output_iam_role"></a> [iam\_role](#output\_iam\_role) | IAM Role used to make read or write requests to the delivery channel and to describe the AWS resources associated with <br>the account. |
| <a name="output_iam_role_organization_aggregator"></a> [iam\_role\_organization\_aggregator](#output\_iam\_role\_organization\_aggregator) | IAM Role used to make read or write requests to the delivery channel and to describe the AWS resources associated with <br>the account. |
| <a name="output_sns_topic"></a> [sns\_topic](#output\_sns\_topic) | SNS topic |
| <a name="output_sns_topic_subscriptions"></a> [sns\_topic\_subscriptions](#output\_sns\_topic\_subscriptions) | SNS topic subscriptions |
| <a name="output_storage_bucket_arn"></a> [storage\_bucket\_arn](#output\_storage\_bucket\_arn) | Bucket ARN |
| <a name="output_storage_bucket_id"></a> [storage\_bucket\_id](#output\_storage\_bucket\_id) | Bucket Name (aka ID) |
<!-- markdownlint-restore -->


## Related Projects

Check out these related projects.

- [terraform-null-label](https://github.com/cloudposse/terraform-null-label) - Terraform module designed to generate consistent names and tags for resources. Use terraform-null-label to implement a strict naming convention.
- [terraform-aws-config-storage](https://github.com/cloudposse/terraform-aws-config-storage) - Terraform module that creates an S3 bucket suitable for storing AWS Config data.
- [terraform-aws-guardduty](https://github.com/cloudposse/terraform-aws-guardduty) - Terraform module that enables and configures AWS GuardDuty.
- [terraform-aws-security-hub](https://github.com/cloudposse/terraform-aws-security-hub) - Terraform module that enables and configures AWS Security Hub.


## References

For additional context, refer to some of these links.

- [List of AWS Config Managed Rules](https://docs.aws.amazon.com/config/latest/developerguide/managed-rules-by-aws-config.html) - A list of rules AWS Config currently supports in the analytics; compute; cryptography and PKI; database; machine learning; management and governance; migration and transfer; network and content delivery; security; identity and compliance; and storage categories.


## ✨ Contributing

This project is under active development, and we encourage contributions from our community.
Many thanks to our outstanding contributors:

<a href="https://github.com/cloudposse/terraform-aws-config/graphs/contributors">
  <img src="https://contrib.rocks/image?repo=cloudposse/terraform-aws-config&max=24" />
</a>

### 🐛 Bug Reports & Feature Requests

Please use the [issue tracker](https://github.com/cloudposse/terraform-aws-config/issues) to report any bugs or file feature requests.

### 💻 Developing

If you are interested in being a contributor and want to get involved in developing this project or help out with Cloud Posse's other projects, we would love to hear from you! 
Hit us up in [Slack][slack], in the `#cloudposse` channel.

In general, PRs are welcome. We follow the typical "fork-and-pull" Git workflow.
 1. Review our [Code of Conduct](https://github.com/cloudposse/terraform-aws-config/?tab=coc-ov-file#code-of-conduct) and [Contributor Guidelines](https://github.com/cloudposse/.github/blob/main/CONTRIBUTING.md).
 2. **Fork** the repo on GitHub
 3. **Clone** the project to your own machine
 4. **Commit** changes to your own branch
 5. **Push** your work back up to your fork
 6. Submit a **Pull Request** so that we can review your changes

**NOTE:** Be sure to merge the latest changes from "upstream" before making a pull request!

### 🌎 Slack Community

Join our [Open Source Community][slack] on Slack. It's **FREE** for everyone! Our "SweetOps" community is where you get to talk with others who share a similar vision for how to rollout and manage infrastructure. This is the best place to talk shop, ask questions, solicit feedback, and work together as a community to build totally *sweet* infrastructure.

### 📰 Newsletter

Sign up for [our newsletter][newsletter] and join 3,000+ DevOps engineers, CTOs, and founders who get insider access to the latest DevOps trends, so you can always stay in the know.
Dropped straight into your Inbox every week — and usually a 5-minute read.

### 📆 Office Hours <img src="https://img.cloudposse.com/fit-in/200x200/https://cloudposse.com/wp-content/uploads/2019/08/Powered-by-Zoom.png" align="right" />

[Join us every Wednesday via Zoom][office_hours] for your weekly dose of insider DevOps trends, AWS news and Terraform insights, all sourced from our SweetOps community, plus a _live Q&A_ that you can’t find anywhere else.
It's **FREE** for everyone!

## About

This project is maintained by [Cloud Posse, LLC][website].
<a href="https://cpco.io/homepage"><img src="https://cloudposse.com/logo-300x69.svg" align="right" /></a>

We are a [**DevOps Accelerator**][commercial_support] for funded startups and enterprises.
Use our ready-to-go terraform architecture blueprints for AWS to get up and running quickly.
We build it with you. You own everything. Your team wins. Plus, we stick around until you succeed.

[![Learn More](https://img.shields.io/badge/learn%20more-success.svg?style=for-the-badge)][commercial_support]

*Your team can operate like a pro today.*

Ensure that your team succeeds by using our proven process and turnkey blueprints. Plus, we stick around until you succeed.

<details>
  <summary>📚 <strong>What's included?</strong></summary>

- **Reference Architecture.** You'll get everything you need from the ground up built using 100% infrastructure as code.
- **Deployment Strategy.** You'll have a battle-tested deployment strategy using GitHub Actions that's automated and repeatable.
- **Site Reliability Engineering.** You'll have total visibility into your apps and microservices.
- **Security Baseline.** You'll have built-in governance with accountability and audit logs for all changes.
- **GitOps.** You'll be able to operate your infrastructure via Pull Requests.
- **Training.** You'll receive hands-on training so your team can operate what we build.
- **Questions.** You'll have a direct line of communication between our teams via a Shared Slack channel.
- **Troubleshooting.** You'll get help to triage when things aren't working.
- **Code Reviews.** You'll receive constructive feedback on Pull Requests.
- **Bug Fixes.** We'll rapidly work with you to fix any bugs in our projects.
</details>

[![README Commercial Support][readme_commercial_support_img]][readme_commercial_support_link]
## License

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg?style=for-the-badge)](https://opensource.org/licenses/Apache-2.0)

<details>
<summary>Preamble to the Apache License, Version 2.0</summary>
<br/>
<br/>
Complete license is available in the [`LICENSE`](LICENSE) file.
```text
Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements.  See the NOTICE file
distributed with this work for additional information
regarding copyright ownership.  The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License.  You may obtain a copy of the License at

  https://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied.  See the License for the
specific language governing permissions and limitations
under the License.
```
</details>

## Trademarks

All other trademarks referenced herein are the property of their respective owners.
## Copyrights

Copyright © 2021-2024 [Cloud Posse, LLC](https://cloudposse.com)

[![README Footer][readme_footer_img]][readme_footer_link]
[![Beacon][beacon]][website]
<!-- markdownlint-disable -->
  [logo]: https://cloudposse.com/logo-300x69.svg
  [docs]: https://cpco.io/docs?utm_source=github&utm_medium=readme&utm_campaign=cloudposse/terraform-aws-config&utm_content=docs
  [website]: https://cpco.io/homepage?utm_source=github&utm_medium=readme&utm_campaign=cloudposse/terraform-aws-config&utm_content=website
  [github]: https://cpco.io/github?utm_source=github&utm_medium=readme&utm_campaign=cloudposse/terraform-aws-config&utm_content=github
  [jobs]: https://cpco.io/jobs?utm_source=github&utm_medium=readme&utm_campaign=cloudposse/terraform-aws-config&utm_content=jobs
  [hire]: https://cpco.io/hire?utm_source=github&utm_medium=readme&utm_campaign=cloudposse/terraform-aws-config&utm_content=hire
  [slack]: https://cpco.io/slack?utm_source=github&utm_medium=readme&utm_campaign=cloudposse/terraform-aws-config&utm_content=slack
  [twitter]: https://cpco.io/twitter?utm_source=github&utm_medium=readme&utm_campaign=cloudposse/terraform-aws-config&utm_content=twitter
  [office_hours]: https://cloudposse.com/office-hours?utm_source=github&utm_medium=readme&utm_campaign=cloudposse/terraform-aws-config&utm_content=office_hours
  [newsletter]: https://cpco.io/newsletter?utm_source=github&utm_medium=readme&utm_campaign=cloudposse/terraform-aws-config&utm_content=newsletter
  [email]: https://cpco.io/email?utm_source=github&utm_medium=readme&utm_campaign=cloudposse/terraform-aws-config&utm_content=email
  [commercial_support]: https://cpco.io/commercial-support?utm_source=github&utm_medium=readme&utm_campaign=cloudposse/terraform-aws-config&utm_content=commercial_support
  [we_love_open_source]: https://cpco.io/we-love-open-source?utm_source=github&utm_medium=readme&utm_campaign=cloudposse/terraform-aws-config&utm_content=we_love_open_source
  [terraform_modules]: https://cpco.io/terraform-modules?utm_source=github&utm_medium=readme&utm_campaign=cloudposse/terraform-aws-config&utm_content=terraform_modules
  [readme_header_img]: https://cloudposse.com/readme/header/img
  [readme_header_link]: https://cloudposse.com/readme/header/link?utm_source=github&utm_medium=readme&utm_campaign=cloudposse/terraform-aws-config&utm_content=readme_header_link
  [readme_footer_img]: https://cloudposse.com/readme/footer/img
  [readme_footer_link]: https://cloudposse.com/readme/footer/link?utm_source=github&utm_medium=readme&utm_campaign=cloudposse/terraform-aws-config&utm_content=readme_footer_link
  [readme_commercial_support_img]: https://cloudposse.com/readme/commercial-support/img
  [readme_commercial_support_link]: https://cloudposse.com/readme/commercial-support/link?utm_source=github&utm_medium=readme&utm_campaign=cloudposse/terraform-aws-config&utm_content=readme_commercial_support_link
  [beacon]: https://ga-beacon.cloudposse.com/UA-76589703-4/cloudposse/terraform-aws-config?pixel&cs=github&cm=readme&an=terraform-aws-config
<!-- markdownlint-restore -->
