variable "name" {
  type = string
}

variable "description" {
  type    = string
  default = " "
}
variable "project_name_prefix" {
  type    = string
  default = " newers"
}

variable "region" {
  type    = string
  default = "us-east-1"
}

variable "scope" {
  description   = "Enter Scope Either REGIONAL or CLOUDFRONT"
  validation {
    condition     = (var.scope == "REGIONAL" || var.scope == "CLOUDFRONT")
    error_message = "Accepted Value is REGIONAL or CLOUDFRONT"
  }
}

variable "common_tags" {
  type        = map(string)
  description = "A map to add common tags to all the resources"
}

variable "cloudwatch_metrics_enabled" {
  default = "false"
  type    = bool
}

variable "sampled_requests_enabled" {
  default = "false"
  type    = bool
}

variable "is_enable_AWSManagedRulesAdminProtectionRuleSet" {
  default     = "false"
  type        = bool
}

variable "is_enable_AWSManagedRulesKnownBadInputsRuleSet" {
  default     = "false"
  type        = bool
}

variable "is_enable_AWSManagedRulesSQLiRuleSet" {
  default     = "false"
  type        = bool
}

variable "is_enable_AWSManagedRulesLinuxRuleSet" {
  default     = "false"
  type        = bool
}

variable "is_enable_AWSManagedRulesUnixRuleSet" {
  default     = "false"
  type        = bool
}

variable "is_enable_AWSManagedRulesWindowsRuleSet" {
  default     = "false"
  type        = bool
}

variable "is_enable_AWSManagedRulesPHPRuleSet" {
  default     = "false"
  type        = bool
}

variable "is_enable_AWSManagedRulesWordPressRuleSet" {
  default     = "false"
  type        = bool
}

variable "is_enable_AWSManagedRulesAnonymousIpList" {
  default     = "false"
  type        = bool
}

variable "is_enable_AWSManagedRulesAmazonIpReputationList" {
  default     = "false"
  type        = bool
}

variable "is_enable_AWSManagedRulesBotControlRuleSet" {
  default     = "false"
  type        = bool
}

variable "is_enable_AWSManagedRulesATPRuleSet" {
  default     = "false"
  type        = bool
}
