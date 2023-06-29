resource "aws_wafv2_web_acl" "WAFWebACL" {
  name        = "WAFWebACL-${var.scope}-${var.name}"
  description = var.description
  scope       = var.scope
  tags = merge(var.common_tags, tomap({ "Name" : "${var.project_name_prefix}-elasticsearch" }))

  default_action {
    allow {}
  }

  visibility_config {
    cloudwatch_metrics_enabled = var.sampled_requests_enabled
    metric_name                = "${var.name}-WAF-Rule-Metric"
    sampled_requests_enabled   = var.sampled_requests_enabled
  }

  rule {
    name     = "AWS-Common-Rule-Set"
    priority = 1
    override_action {
      none {}
    }
    statement {
      managed_rule_group_statement {
        name        = "AWSManagedRulesCommonRuleSet"
        vendor_name = "AWS"
        //To Confirm
        # excluded_rule {
        #     name = "SizeRestrictions_QUERYSTRING"
        # }
      }
    }
    visibility_config {
      cloudwatch_metrics_enabled = var.sampled_requests_enabled
      metric_name                = "${var.name}-WAF-Rule-Metric"
      sampled_requests_enabled   = var.sampled_requests_enabled
    }
  }
  dynamic "rule" {
    for_each = var.is_enable_AWSManagedRulesAdminProtectionRuleSet ? [1] : []
    content{
      name     = "AWS-Admin-Protection-Rule-Set"
      priority = 2
      override_action {
        none {}
      }
      statement {
        managed_rule_group_statement {
          name        = "AWSManagedRulesAdminProtectionRuleSet"
          vendor_name = "AWS"
        }
      }
      visibility_config {
        cloudwatch_metrics_enabled = var.sampled_requests_enabled
        metric_name                = "${var.name}-WAF-Rule-Metric"
        sampled_requests_enabled   = var.sampled_requests_enabled
      }
    }
  }

  dynamic "rule" {
    for_each = var.is_enable_AWSManagedRulesKnownBadInputsRuleSet ? [1] : []
    content{
      name     = "AWS-Known-Bad-Inputs-Rule-Set"
      priority = 3
      override_action {
        none {}
      }
      statement {
        managed_rule_group_statement {
          name        = "AWSManagedRulesKnownBadInputsRuleSet"
          vendor_name = "AWS"
        }
      }
      visibility_config {
        cloudwatch_metrics_enabled = var.sampled_requests_enabled
        metric_name                = "${var.name}-WAF-Rule-Metric"
        sampled_requests_enabled   = var.sampled_requests_enabled
      }
    }
  }

  dynamic "rule" {
    for_each = var.is_enable_AWSManagedRulesSQLiRuleSet ? [1] : []
    content{
      name     = "AWS-SQLi-Rule-Set"
      priority = 4
      override_action {
        none {}
      }
      statement {
        managed_rule_group_statement {
          name        = "AWSManagedRulesSQLiRuleSet"
          vendor_name = "AWS"
        }
      }
      visibility_config {
        cloudwatch_metrics_enabled = var.sampled_requests_enabled
        metric_name                = "${var.name}-WAF-Rule-Metric"
        sampled_requests_enabled   = var.sampled_requests_enabled
      }
    }
  }

  dynamic "rule" {
    for_each = var.is_enable_AWSManagedRulesLinuxRuleSet ? [1] : []
    content{
      name     = "AWS-Linux-Rule-Set"
      priority = 5
      override_action {
        none {}
      }
      statement {
        managed_rule_group_statement {
          name        = "AWSManagedRulesLinuxRuleSet"
          vendor_name = "AWS"
        }
      }
      visibility_config {
        cloudwatch_metrics_enabled = var.sampled_requests_enabled
        metric_name                = "${var.name}-WAF-Rule-Metric"
        sampled_requests_enabled   = var.sampled_requests_enabled
      }
    }
  }

  dynamic "rule" {
    for_each = var.is_enable_AWSManagedRulesUnixRuleSet ? [1] : []
    content{
      name     = "AWS-Unix-Rule-Set"
      priority = 6
      override_action {
        none {}
      }
      statement {
        managed_rule_group_statement {
          name        = "AWSManagedRulesUnixRuleSet"
          vendor_name = "AWS"
        }
      }
      visibility_config {
        cloudwatch_metrics_enabled = var.sampled_requests_enabled
        metric_name                = "${var.name}-WAF-Rule-Metric"
        sampled_requests_enabled   = var.sampled_requests_enabled
      }
    }
  }

  dynamic "rule" {
    for_each = var.is_enable_AWSManagedRulesWindowsRuleSet ? [1] : []
    content{
      name     = "AWS-Windows-Rule-Set"
      priority = 7
      override_action {
        none {}
      }
      statement {
        managed_rule_group_statement {
          name        = "AWSManagedRulesWindowsRuleSet"
          vendor_name = "AWS"
        }
      }
      visibility_config {
        cloudwatch_metrics_enabled = var.sampled_requests_enabled
        metric_name                = "${var.name}-WAF-Rule-Metric"
        sampled_requests_enabled   = var.sampled_requests_enabled
      }
    }
  }

  dynamic "rule" {
    for_each = var.is_enable_AWSManagedRulesPHPRuleSet ? [1] : []
    content{
      name     = "AWS-PHP-Rule-Set"
      priority = 8
      override_action {
        none {}
      }
      statement {
        managed_rule_group_statement {
          name        = "AWSManagedRulesPHPRuleSet"
          vendor_name = "AWS"
        }
      }
      visibility_config {
        cloudwatch_metrics_enabled = var.sampled_requests_enabled
        metric_name                = "${var.name}-WAF-Rule-Metric"
        sampled_requests_enabled   = var.sampled_requests_enabled
      }
    }
  }

  dynamic "rule" {
    for_each = var.is_enable_AWSManagedRulesWordPressRuleSet ? [1] : []
    content{
      name     = "AWS-Wordpress-Rule-Set"
      priority = 9
      override_action {
        none {}
      }
      statement {
        managed_rule_group_statement {
          name        = "AWSManagedRulesWordPressRuleSet"
          vendor_name = "AWS"
        }
      }
      visibility_config {
        cloudwatch_metrics_enabled = var.sampled_requests_enabled
        metric_name                = "${var.name}-WAF-Rule-Metric"
        sampled_requests_enabled   = var.sampled_requests_enabled
      }
    }
  }

  dynamic "rule" {
    for_each = var.is_enable_AWSManagedRulesAnonymousIpList ? [1] : []
    content{
      name     = "AWS-Anonymous-IP-List"
      priority = 10
      override_action {
        none {}
      }
      statement {
        managed_rule_group_statement {
          name        = "AWSManagedRulesAnonymousIpList"
          vendor_name = "AWS"
        }
      }
      visibility_config {
        cloudwatch_metrics_enabled = var.sampled_requests_enabled
        metric_name                = "${var.name}-WAF-Rule-Metric"
        sampled_requests_enabled   = var.sampled_requests_enabled
      }
    }
  }

  dynamic "rule" {
    for_each = var.is_enable_AWSManagedRulesAmazonIpReputationList ? [1] : []
    content{
      name     = "AWS-IP-Reputation-List"
      priority = 11
      override_action {
        none {}
      }
      statement {
        managed_rule_group_statement {
          name        = "AWSManagedRulesAmazonIpReputationList"
          vendor_name = "AWS"
        }
      }
      visibility_config {
        cloudwatch_metrics_enabled = var.sampled_requests_enabled
        metric_name                = "${var.name}-WAF-Rule-Metric"
        sampled_requests_enabled   = var.sampled_requests_enabled
      }
    }
  }

  dynamic "rule" {
    for_each = var.is_enable_AWSManagedRulesBotControlRuleSet ? [1] : []
    content{
      name     = "AWS-Bot-Control-Rule-Set"
      priority = 12
      override_action {
        none {}
      }
      statement {
        managed_rule_group_statement {
          name        = "AWSManagedRulesBotControlRuleSet"
          vendor_name = "AWS"
        }
      }
      visibility_config {
        cloudwatch_metrics_enabled = var.sampled_requests_enabled
        metric_name                = "${var.name}-WAF-Rule-Metric"
        sampled_requests_enabled   = var.sampled_requests_enabled
      }
    }
  }

  dynamic "rule" {
    for_each = var.is_enable_AWSManagedRulesATPRuleSet ? [1] : []
    content{
      name     = "AWS-ATP-Rule-Set"
      priority = 13
      override_action {
        none {}
      }
      statement {
        managed_rule_group_statement {
          name        = "AWSManagedRulesATPRuleSet"
          vendor_name = "AWS"
        }
      }
      visibility_config {
        cloudwatch_metrics_enabled = var.sampled_requests_enabled
        metric_name                = "${var.name}-WAF-Rule-Metric"
        sampled_requests_enabled   = var.sampled_requests_enabled
      }
    }
  }
}
