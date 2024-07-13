resource "aws_s3_bucket" "test_bucket" {
  bucket = var.bucket_name
  acl    = "private"
  versioning {
    enabled = var.versioning
  }
  tags = {
    Name = var.tags
  }
}