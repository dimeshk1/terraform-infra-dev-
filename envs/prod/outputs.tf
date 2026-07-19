output "bucket_names" {
  description = "Map of bucket logical names to bucket names."
  value       = module.s3.bucket_names
}

output "bucket_arns" {
  description = "Map of bucket logical names to bucket ARNs."
  value       = module.s3.bucket_arns
}

output "ec2_instance_ids" {
  description = "Map of EC2 logical names to instance IDs."
  value       = { for k, v in module.ec2 : k => v.instance_id }
}

output "ec2_instance_public_ips" {
  description = "Map of EC2 logical names to public IPs (if assigned)."
  value       = { for k, v in module.ec2 : k => v.instance_public_ip }
}

output "ec2_security_group_ids" {
  description = "Map of EC2 logical names to security group IDs."
  value       = { for k, v in module.ec2 : k => v.security_group_id }
}
