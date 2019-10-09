output "id" {
  value       = aws_cloudfront_distribution.default.id
  description = "The distribution ID"
}

output "arn" {
  value       = aws_cloudfront_distribution.default.arn
  description = "The distribution ARN"
}
