# terraform.tfvars

name                  = "my-app-waf"
description           = "Web ACL for my application"
project_name_prefix   = "myproject"
region                = "us-west-1"
scope                 = "REGIONAL" # or "CLOUDFRONT"

common_tags = {
  Environment = "dev"
  Team        = "DevOps"
  Project     = "MyWAF"
}

cloudwatch_metrics_enabled       = true
sampled_requests_enabled         = true

# Enable/Disable AWS Managed Rule Sets
is_enable_AWSManagedRulesAdminProtectionRuleSet      = true
is_enable_AWSManagedRulesKnownBadInputsRuleSet       = true
is_enable_AWSManagedRulesSQLiRuleSet                 = true
is_enable_AWSManagedRulesLinuxRuleSet                = false
is_enable_AWSManagedRulesUnixRuleSet                 = false
is_enable_AWSManagedRulesWindowsRuleSet              = false
is_enable_AWSManagedRulesPHPRuleSet                  = false
is_enable_AWSManagedRulesWordPressRuleSet            = false
is_enable_AWSManagedRulesAnonymousIpList             = true
is_enable_AWSManagedRulesAmazonIpReputationList      = true
is_enable_AWSManagedRulesBotControlRuleSet           = false
is_enable_AWSManagedRulesATPRuleSet                  = false
