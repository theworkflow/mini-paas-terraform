variable "bucket_name" {
  type        = "string"
  description = "AWS S3 bucket name"
}

variable "acl" {
  type        = "string"
  description = "Access Control List setting"
}

variable "force_destroy" {
  type        = bool
  description = "Delete all object if bucket is to be terminated"
}

variable "index_document" {
  type        = "string"
  description = "Website index HTML file"
}

variable "error_document" {
  type        = "string"
  description = "Website error HTML file"
}

variable "cors_allowed_origins" {
  type        = list(string)
  description = "Allowed CORS origins"
}

variable "cors_allowed_methods" {
  type        = list(string)
  description = "Allowed CORS methods"
}

variable "tags" {
  type        = map(string)
  description = "Additional tags (e.g. `{ Foo = \"XYZ\" }`"
}
