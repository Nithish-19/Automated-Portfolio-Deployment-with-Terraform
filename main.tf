provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "portfolio" {
  bucket = "nithish-portfolio-bucket"
  acl    = "public-read"
}

resource "aws_cloudfront_distribution" "cdn" {
  origin {
    domain_name = aws_s3_bucket.portfolio.bucket_regional_domain_name
    origin_id   = "S3PortfolioOrigin"
  }
}
