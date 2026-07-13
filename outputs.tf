output "bucket_names" {
  description = "Names of all S3 buckets."
  value       = { for k, v in aws_s3_bucket.this : k => v.bucket }
}

output "bucket_arns" {
  description = "ARNs of all S3 buckets."
  value       = { for k, v in aws_s3_bucket.this : k => v.arn }
}
