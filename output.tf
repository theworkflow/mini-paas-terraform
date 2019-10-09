output "access_key_id" {
  value       = module.deploy_user.access_key_id
  description = "The access key ID"
}

output "secret_access_key" {
  value       = module.deploy_user.secret_access_key
  description = "The secret access key. This will be written to the state file in plain-text"
}

output "s3_bucket_name" {
  value       = module.web_app.bucket_name
  description = "Name of S3 bucket"
}

output "cloudfront_distribution_id" {
  value       = module.cdn.id
  description = "DNS record of website bucket"
}
