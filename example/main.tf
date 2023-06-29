module "waf_webacl" {
  source                                      = "./terraform-aws-waf"
  name                                        = "tothenew-waf"
  description                                 = "WAF Web ACL"
  scope                                       = "REGIONAL"
  region                                      = "us-east-1"
  is_enable_AWSManagedRulesLinuxRuleSet       = true
  common_tags = {
    "Project"     = "ToTheNew"
    "Environment" = "Development"
  }
}

