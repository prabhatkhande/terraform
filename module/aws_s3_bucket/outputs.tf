output "s3_bucket" {
  value = {
    region = aws_s3_bucket.test_bucket.region
    bucket = aws_s3_bucket.test_bucket.bucket
  }
}