provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket  = "mini-pass-demo-app-terraform-state"
    key     = "terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}

module "label" {
  source      = "git::https://github.com/cloudposse/terraform-null-label.git?ref=tags/0.14.1"
  label_order = ["namespace", "name"]
  namespace   = var.namespace
  name        = var.name
  tags        = var.tags
}

module "deploy_user" {
  source         = "./modules/deploy_user"
  path           = "/"
  force_destroy  = var.force_destroy
  name           = "${module.label.id}-deployer"
  s3_bucket_arn  = module.web_app.arn
  cloudfront_arn = module.cdn.arn
  tags           = module.label.tags
}

module "web_app" {
  source               = "./modules/s3"
  bucket_name          = "${module.label.id}-web"
  acl                  = var.acl
  force_destroy        = var.force_destroy
  index_document       = var.index_document
  error_document       = var.error_document
  tags                 = module.label.tags
  cors_allowed_origins = []
  cors_allowed_methods = []
}

module "cdn" {
  source         = "./modules/cloudfront"
  comment        = "Mini PaaS CDN"
  index_document = var.index_document
  aliases        = var.aliases
  price_class    = var.price_class
  domain_name    = module.web_app.domain_name
  tags           = module.label.tags
}
