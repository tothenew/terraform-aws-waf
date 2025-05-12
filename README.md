# terraform-aws-waf

[![Lint Status](https://github.com/tothenew/terraform-aws-waf/workflows/Lint/badge.svg)](https://github.com/tothenew/terraform-aws-waf/actions)
[![LICENSE](https://img.shields.io/github/license/tothenew/terraform-aws-waf)](https://github.com/tothenew/terraform-aws-waf/blob/master/LICENSE)

This is a template to use for baseline. The default actions will provide updates for section bitween Requirements and Outputs.

Introduction
This Terraform module provisions an AWS WAFv2 Web ACL with optional AWS-managed rule groups. It supports both REGIONAL and CLOUDFRONT scopes, providing fine-grained web request filtering and protection against common attack vectors. The module is designed to be flexible, allowing selective enabling of managed rule groups based on the security requirements of your application.

Explanation of Module
The module creates a WAFv2 Web ACL using Terraform, with the capability to attach multiple AWS-managed rule sets such as:

Common Rule Set

Admin Protection

Known Bad Inputs

SQL Injection

OS-specific rules (Linux, Unix, Windows)

WordPress and PHP rule sets

Anonymous IP and IP reputation filtering

Bot Control and ATP protections

Each rule can be conditionally enabled using input variables, and all metrics are integrated with CloudWatch for observability. You can also tag resources consistently using the common_tags input.

Intended Users
This module is intended for:

DevOps/Cloud Engineers managing web-facing applications in AWS

Security teams implementing layered protection using AWS WAF

Developers who need an infrastructure-as-code solution to standardize WAF deployment

Organizations requiring modular and reusable Terraform components for security

Resources Created and Managed by This Module
aws_wafv2_web_acl: The primary WAFv2 Web ACL

(Conditionally) Multiple aws_wafv2_web_acl.rule: Managed rule groups by AWS

CloudWatch metrics for each rule, if enabled

Tags for all WAF resources

Example Usage
hcl
Copy
Edit
module "waf_web_acl" {
  source = "../modules/waf"

  name                          = "app"
  description                   = "WAF for my application"
  scope                         = "REGIONAL"
  project_name_prefix           = "myproject"
  common_tags                   = { Environment = "dev", Project = "myproject" }
  sampled_requests_enabled      = true

  is_enable_AWSManagedRulesAdminProtectionRuleSet   = true
  is_enable_AWSManagedRulesSQLiRuleSet              = true
  is_enable_AWSManagedRulesAnonymousIpList          = true
}


Module managed by [TO THE NEW Pvt. Ltd.](https://github.com/tothenew)

## License

Apache 2 Licensed. See [LICENSE](https://github.com/tothenew/terraform-aws-waf/blob/main/LICENSE) for full details.
