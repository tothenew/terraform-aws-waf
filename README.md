# terraform-aws-waf

[![Lint Status](https://github.com/tothenew/terraform-aws-waf/workflows/Lint/badge.svg)](https://github.com/tothenew/terraform-aws-waf/actions)
[![LICENSE](https://img.shields.io/github/license/tothenew/terraform-aws-waf)](https://github.com/tothenew/terraform-aws-waf/blob/master/LICENSE)

## Introduction

This Terraform module provisions an **AWS WAFv2 Web ACL**, enabling users to deploy AWS-managed security rule sets with configurable scopes (REGIONAL or CLOUDFRONT). It helps in protecting applications from common web exploits such as SQL injection, bot traffic, and bad actors.

This is a template to use for baseline. The default actions will provide updates for section between Requirements and Outputs.

Module managed by [TO THE NEW Pvt. Ltd.](https://github.com/tothenew)

## Explanation of Module

The module defines a WAFv2 Web ACL and conditionally attaches multiple AWS-managed rule groups. Each rule group can be toggled using Boolean input variables. It supports enabling CloudWatch metrics and sampling for observability. The module is fully taggable and integrates seamlessly with other AWS services such as ALB, API Gateway, and CloudFront.

## Intended Users

This module is designed for:
- Cloud/DevOps engineers managing web-facing AWS infrastructure
- Security engineers enforcing application-level protection
- Developers implementing automated infrastructure via Terraform
- Teams maintaining reusable security infrastructure modules

## Resources Created and Managed by This Module

- `aws_wafv2_web_acl`: The main Web ACL resource.
- One or more AWS-managed rule groups, conditionally created.
- CloudWatch metrics (if enabled).
- Tagged AWS resources for consistent project tracking.

## Example Usages

```hcl
module "waf_web_acl" {
  source = "../modules/waf"

  name                          = "my-app"
  description                   = "Web ACL for my application"
  scope                         = "REGIONAL"
  project_name_prefix           = "myproject"
  region                        = "us-east-1"
  common_tags                   = {
    Environment = "dev"
    Owner       = "security-team"
  }
  cloudwatch_metrics_enabled    = true
  sampled_requests_enabled      = true

  is_enable_AWSManagedRulesAdminProtectionRuleSet = true
  is_enable_AWSManagedRulesSQLiRuleSet            = true
  is_enable_AWSManagedRulesAnonymousIpList        = true
}
