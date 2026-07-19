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

variable "ec2_instances" {
  description = "Map of EC2 instance definitions keyed by logical name."
  type = map(object({
    ami_id                = string
    instance_type         = string
    vpc_id                = string
    subnet_id             = string
    associate_public_ip   = bool
    allowed_ingress_cidrs = list(string)
    ssh_port              = optional(number, 22)
    key_name              = optional(string)
  }))
  default = {}
}
