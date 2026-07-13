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
  default     = "dev"

  validation {
    condition     = contains(["dev", "qa", "stage", "prod"], var.environment)
    error_message = "Environment must be one of: dev, qa, stage, prod."
  }
}

variable "bucket_names" {
  description = "List of S3 bucket names to create."
  type        = map(string)
  default = {
    first  = "my-sample-s3-bucket-dekay-2025"
    second = "my-sample-s3-bucket-second-2025"
  }
}
