resource "aws_s3_bucket" "this" {
  for_each = var.bucket_names

  bucket = each.value

  tags = {
    Name = each.key
  }
}

resource "aws_s3_bucket_public_access_block" "this" {
  for_each = var.bucket_names

  bucket = aws_s3_bucket.this[each.key].id

  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
