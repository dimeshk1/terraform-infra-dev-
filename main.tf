resource "aws_s3_bucket" "this" {
  bucket = "my-sample-s3-bucket-dekay-2025"

  tags = {
    Name = "first-bucket"
  }
}

resource "aws_s3_bucket" "second" {
  bucket = "my-sample-s3-bucket-second-2025-v3"

  tags = {
    Name = "second-bucket"
  }
}
