variable "namespace" {
  type        = "string"
  description = "Organization name/abbreviation"
  default     = "mini-paas"
}

variable "name" {
  type        = "string"
  description = "Application name"
  default     = "demo-app"
}

variable "tags" {
  type        = map(string)
  description = "Additional tags (e.g. map('BusinessUnit','XYZ'))"
  default     = {}
}

variable "force_destroy" {
  type        = bool
  description = "Destroy sub-resources"
  default     = true
}

variable "index_document" {
  type        = "string"
  description = "S3 website index document"
  default     = "index.html"
}

variable "error_document" {
  type        = "string"
  description = "S3 website error document"
  default     = ""
}

variable "acl" {
  type        = "string"
  description = "Access Control List setting"
  default     = "private"
}

variable "aliases" {
  type        = list(string)
  description = "FQDNs to CNAME"
  default     = ["mini-paas-demo.theworkflow.tech"]
}

variable "price_class" {
  type        = "string"
  description = "Cloudfront price class (https://aws.amazon.com/cloudfront/pricing)"
  default     = "PriceClass_All"
}
