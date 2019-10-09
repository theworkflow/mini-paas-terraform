variable "s3_bucket_arn" {
  type        = "string"
  description = "S3 bucket ARN"
}

variable "cloudfront_arn" {
  type        = "string"
  description = "CloudFront ARN"
}

variable "name" {
  type        = "string"
  description = "IAM user name"
}

variable "path" {
  type        = "string"
  description = "IAM user path"
}

variable "force_destroy" {
  type        = bool
  description = "Destroy all user owned IAM resources (keys/MFA devices)"
}

variable "tags" {
  type        = map(string)
  description = "Additional tags (e.g. `{ Foo = \"XYZ\" }`"
}
