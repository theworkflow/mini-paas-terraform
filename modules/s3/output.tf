output "name" {
  value       = aws_s3_bucket.default.id
  description = "DNS record of website bucket"
}

output "domain_name" {
  value       = aws_s3_bucket.default.bucket_domain_name
  description = "Name of of website bucket"
}

output "arn" {
  value       = aws_s3_bucket.default.arn
  description = "Name of of website bucket"
}

output "website_endpoint" {
  value       = aws_s3_bucket.default.website_endpoint
  description = "The website endpoint URL"
}

output "website_domain" {
  value       = aws_s3_bucket.default.website_domain
  description = "The domain of the website endpoint"
}