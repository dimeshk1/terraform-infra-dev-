output "first_bucket_name" {
  description = "Name of the first S3 bucket."
  value       = aws_s3_bucket.this.bucket
}

output "first_bucket_arn" {
  description = "ARN of the first S3 bucket."
  value       = aws_s3_bucket.this.arn
}

output "second_bucket_name" {
  description = "Name of the second S3 bucket."
  value       = aws_s3_bucket.second.bucket
}

output "second_bucket_arn" {
  description = "ARN of the second S3 bucket."
  value       = aws_s3_bucket.second.arn
}
