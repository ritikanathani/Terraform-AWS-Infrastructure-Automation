resource "aws_s3_bucket" "this" {
  bucket = "my-static-website-bucket-12345"
  acl    = "public-read"

  website {
    index_document = "index.html"
  }
}

output "bucket_name" {
  value = aws_s3_bucket.this.bucket
}
