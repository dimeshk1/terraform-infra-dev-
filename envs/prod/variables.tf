variable "aws_region" {
  description = "AWS region for the provider configuration."
  type        = string
  default     = "us-east-1"
}

variable "project_name" {
  description = "Project name used for naming and tagging AWS resources."
  type        = string
  default     = "terraform-infra-dev"
}

variable "environment" {
  description = "Deployment environment."
  type        = string
  default     = "prod"
}

variable "bucket_names" {
  description = "Map of logical names to globally unique S3 bucket names."
  type        = map(string)
}
