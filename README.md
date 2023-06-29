# terraform-aws-waf

<!-- BEGIN_TF_DOCS -->

## Requirements

No requirements.

## Providers

| Name                                              | Version |
| ------------------------------------------------- | ------- |
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a     |

## Modules

No modules.

## Resources

| Name                                                                                                                     | Type     |
| ------------------------------------------------------------------------------------------------------------------------ | -------- |
| [aws_wafv2_web_acl.WAFWebACL](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/wafv2_web_acl) | resource |

## Inputs

| Name                                                                                                                                                                                | Description                                   | Type          | Default       | Required |
| ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | --------------------------------------------- | ------------- | ------------- |:--------:|
| <a name="input_cloudwatch_metrics_enabled"></a> [cloudwatch\_metrics\_enabled](#input\_cloudwatch\_metrics\_enabled)                                                                | n/a                                           | `bool`        | `"false"`     | no       |
| <a name="input_common_tags"></a> [common\_tags](#input\_common\_tags)                                                                                                               | A map to add common tags to all the resources | `map(string)` | n/a           | yes      |
| <a name="input_description"></a> [description](#input\_description)                                                                                                                 | n/a                                           | `string`      | `" "`         | no       |
| <a name="input_is_enable_AWSManagedRulesATPRuleSet"></a> [is\_enable\_AWSManagedRulesATPRuleSet](#input\_is\_enable\_AWSManagedRulesATPRuleSet)                                     | n/a                                           | `bool`        | `"false"`     | no       |
| <a name="input_is_enable_AWSManagedRulesAdminProtectionRuleSet"></a> [is\_enable\_AWSManagedRulesAdminProtectionRuleSet](#input\_is\_enable\_AWSManagedRulesAdminProtectionRuleSet) | n/a                                           | `bool`        | `"false"`     | no       |
| <a name="input_is_enable_AWSManagedRulesAmazonIpReputationList"></a> [is\_enable\_AWSManagedRulesAmazonIpReputationList](#input\_is\_enable\_AWSManagedRulesAmazonIpReputationList) | n/a                                           | `bool`        | `"false"`     | no       |
| <a name="input_is_enable_AWSManagedRulesAnonymousIpList"></a> [is\_enable\_AWSManagedRulesAnonymousIpList](#input\_is\_enable\_AWSManagedRulesAnonymousIpList)                      | n/a                                           | `bool`        | `"false"`     | no       |
| <a name="input_is_enable_AWSManagedRulesBotControlRuleSet"></a> [is\_enable\_AWSManagedRulesBotControlRuleSet](#input\_is\_enable\_AWSManagedRulesBotControlRuleSet)                | n/a                                           | `bool`        | `"false"`     | no       |
| <a name="input_is_enable_AWSManagedRulesKnownBadInputsRuleSet"></a> [is\_enable\_AWSManagedRulesKnownBadInputsRuleSet](#input\_is\_enable\_AWSManagedRulesKnownBadInputsRuleSet)    | n/a                                           | `bool`        | `"false"`     | no       |
| <a name="input_is_enable_AWSManagedRulesLinuxRuleSet"></a> [is\_enable\_AWSManagedRulesLinuxRuleSet](#input\_is\_enable\_AWSManagedRulesLinuxRuleSet)                               | n/a                                           | `bool`        | `"false"`     | no       |
| <a name="input_is_enable_AWSManagedRulesPHPRuleSet"></a> [is\_enable\_AWSManagedRulesPHPRuleSet](#input\_is\_enable\_AWSManagedRulesPHPRuleSet)                                     | n/a                                           | `bool`        | `"false"`     | no       |
| <a name="input_is_enable_AWSManagedRulesSQLiRuleSet"></a> [is\_enable\_AWSManagedRulesSQLiRuleSet](#input\_is\_enable\_AWSManagedRulesSQLiRuleSet)                                  | n/a                                           | `bool`        | `"false"`     | no       |
| <a name="input_is_enable_AWSManagedRulesUnixRuleSet"></a> [is\_enable\_AWSManagedRulesUnixRuleSet](#input\_is\_enable\_AWSManagedRulesUnixRuleSet)                                  | n/a                                           | `bool`        | `"false"`     | no       |
| <a name="input_is_enable_AWSManagedRulesWindowsRuleSet"></a> [is\_enable\_AWSManagedRulesWindowsRuleSet](#input\_is\_enable\_AWSManagedRulesWindowsRuleSet)                         | n/a                                           | `bool`        | `"false"`     | no       |
| <a name="input_is_enable_AWSManagedRulesWordPressRuleSet"></a> [is\_enable\_AWSManagedRulesWordPressRuleSet](#input\_is\_enable\_AWSManagedRulesWordPressRuleSet)                   | n/a                                           | `bool`        | `"false"`     | no       |
| <a name="input_name"></a> [name](#input\_name)                                                                                                                                      | n/a                                           | `string`      | n/a           | yes      |
| <a name="input_project_name_prefix"></a> [project\_name\_prefix](#input\_project\_name\_prefix)                                                                                     | n/a                                           | `string`      | `" newers"`   | no       |
| <a name="input_region"></a> [region](#input\_region)                                                                                                                                | n/a                                           | `string`      | `"us-east-1"` | no       |
| <a name="input_sampled_requests_enabled"></a> [sampled\_requests\_enabled](#input\_sampled\_requests\_enabled)                                                                      | n/a                                           | `bool`        | `"false"`     | no       |
| <a name="input_scope"></a> [scope](#input\_scope)                                                                                                                                   | Enter Scope Either REGIONAL or CLOUDFRONT     | `any`         | n/a           | yes      |

## Outputs

| Name                                                                                          | Description |
| --------------------------------------------------------------------------------------------- | ----------- |
| <a name="output_aws_wafv2_web_acl"></a> [aws\_wafv2\_web\_acl](#output\_aws\_wafv2\_web\_acl) | WAF ARN     |

<!-- END_TF_DOCS -->
