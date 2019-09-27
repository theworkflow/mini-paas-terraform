variable "comment" {
  type        = "string"
  description = "Comment for the origin access identity"
}

variable "domain_name" {
  type        = "string"
  description = "S3 bucket domain name"
}

variable "index_document" {
  type        = "string"
  description = "S3 website index HTML file"
}

variable "aliases" {
  type        = list(string)
  description = "FQDNs to CNAME"
}


variable "price_class" {
  type        = "string"
  description = "Cloudfront price class (https://aws.amazon.com/cloudfront/pricing)"
}

variable "tags" {
  type        = map(string)
  description = "Additional tags (e.g. `{ Foo = \"XYZ\" }`"
}
