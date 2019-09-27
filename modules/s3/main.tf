resource "aws_s3_bucket" "default" {
  bucket        = var.bucket_name
  acl           = var.acl
  tags          = var.tags
  force_destroy = var.force_destroy

  website {
    index_document = var.index_document
    error_document = var.error_document
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

  dynamic "cors_rule" {
    for_each = var.cors_allowed_origins
    content {
      allowed_methods = var.coors_allowed_methods
      allowed_origins = [cors_rule.value]
    }
  }
}
