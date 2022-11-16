module "waf_webacl" {
  source                                      = "git::https://github.com/tothenew/terraform-aws-waf"
  name                                        = "tothenew-waf"
  description                                 = "WAF Web ACL"
  scope                                       = "REGIONAL"
  region                                      = "us-east-1"
  enable_AWSManagedRulesLinuxRuleSet          = true
  enable_AWSManagedRulesKnownBadInputsRuleSet = true
  tags = {
    "Project"     = "ToTheNew"
    "Environment" = "Development"
  }
}