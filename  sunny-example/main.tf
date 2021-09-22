provider "aws" {
  region = "us-east-1"
}

module "cloudfront_s3_website_with_domain" {
  source                 = "../s3-cloudfront"
  hosted_zone            = "absolute.com"
  domain_name            = "test.abc.absolute.com"
  acm_certificate_domain = "*.abc.absolute.com"
  use_default_domain     = false
  upload_sample_file     = true
  tags                   = var.tags
}

variable "tags" {
  default = {
    owner       = "absolute"
    application = "sample"
  }
}

output "mod1_domain" {
  value = module.cloudfront_s3_website_with_domain.website_address
}