#What Infra am I Creating?

# provider "aws" {
#   region = var.aws_region
# }

resource "aws_s3_bucket" "demo_poc1_bucket" {
  bucket        = var.bucket_name
  force_destroy = true

  tags = var.tags
}