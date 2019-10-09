output "bucket_name" {
  value       = aws_s3_bucket.default.id
  description = "DNS record of website bucket"
}

output "domain_name" {
  value       = aws_s3_bucket.default.bucket_domain_name
  description = "Name of of website bucket"
}

output "arn" {
  value       = aws_s3_bucket.default.arn
  description = "ARN of S3 bucket"
}
