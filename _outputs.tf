output "aws_wafv2_web_acl" {
  description = "WAF ARN"
  value       = aws_wafv2_web_acl.WAFWebACL.arn
}
