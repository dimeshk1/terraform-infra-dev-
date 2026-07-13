output "bucket_names" {
  description = "Map of bucket logical names to bucket names."
  value       = module.s3.bucket_names
}

output "bucket_arns" {
  description = "Map of bucket logical names to bucket ARNs."
  value       = module.s3.bucket_arns
}
