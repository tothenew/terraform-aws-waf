variable "name" {
  type = string
}

variable "description" {
  type    = string
  default = " "
}

variable "region" {
  type    = string
  default = "us-east-1"
}

variable "scope" {
  validation {
    condition     = (var.scope == "REGIONAL" || var.scope == "CLOUDFRONT")
    error_message = "Accepted Value is REGIONAL or CLOUDFRONT"
    description   = "Enter Scope Either REGIONAL or CLOUDFRONT"
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