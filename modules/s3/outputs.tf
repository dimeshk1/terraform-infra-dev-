output "bucket_names" {
  description = "Map of bucket logical names to bucket names."
  value       = { for k, v in aws_s3_bucket.this : k => v.bucket }
}

output "bucket_arns" {
  description = "Map of bucket logical names to bucket ARNs."
  value       = { for k, v in aws_s3_bucket.this : k => v.arn }
}
