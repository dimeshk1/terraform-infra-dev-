terraform {
  required_version = ">= 1.14.9"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = var.aws_region

  default_tags {
    tags = {
      Project     = var.project_name
      Environment = var.environment
      ManagedBy   = "Terraform"
    }
  }
}

module "s3" {
  source       = "../../modules/s3"
  bucket_names = var.bucket_names
}

module "ec2" {
  for_each                    = var.ec2_instances
  source                      = "../../modules/ec2"
  name_prefix                 = "${var.project_name}-${var.environment}-${each.key}"
  ami_id                      = each.value.ami_id
  instance_type               = each.value.instance_type
  vpc_id                      = each.value.vpc_id
  subnet_id                   = each.value.subnet_id
  associate_public_ip_address = each.value.associate_public_ip
  allowed_ingress_cidrs       = each.value.allowed_ingress_cidrs
  ssh_port                    = each.value.ssh_port
  key_name                    = each.value.key_name
}

moved {
  from = module.ec2.aws_instance.this
  to   = module.ec2["main"].aws_instance.this
}

moved {
  from = module.ec2.aws_security_group.ec2
  to   = module.ec2["main"].aws_security_group.ec2
}
