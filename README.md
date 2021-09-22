Terraform module for create a S3 bucket for storing static file and agent binaries with CloudFront Distribution

The following resources will be created

S3 Bucket
CloudFront distribution
Route53 record
Upload sample html file (optional)


## Example 
Use the `s3-cloudfron` terraform modules , please refer to `sunny-example` folder

```
module "cloudfront_s3_website_with_domain" {
  source                 = "../s3-cloudfront"
  hosted_zone            = "absolute.com"
  domain_name            = "test.abc.absolute.com"
  acm_certificate_domain = "*.abc.absolute.com"
  use_default_domain     = false
  upload_sample_file     = true
  tags                   = var.tags
}
```