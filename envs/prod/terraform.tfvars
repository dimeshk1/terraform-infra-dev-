aws_region   = "us-east-1"
project_name = "terraform-infra-prod"
environment  = "prod"

bucket_names = {
  first  = "my-sample-s3-bucket-dekay-2025-prod"
  second = "my-sample-s3-bucket-second-2025-prod"
  #third  = "my-sample-s3-bucket-third-2025-prod"
}

ec2_instances = {
  main = {
    ami_id                = "ami-0c02fb55956c7d316"
    instance_type         = "t3.micro"
    vpc_id                = "vpc-xxxxxxxx"
    subnet_id             = "subnet-xxxxxxxx"
    associate_public_ip   = false
    allowed_ingress_cidrs = ["10.0.0.0/16"]
    ssh_port              = 22
    key_name              = null
  }
  worker = {
    ami_id                = "ami-0c02fb55956c7d316"
    instance_type         = "t3.micro"
    vpc_id                = "vpc-xxxxxxxx"
    subnet_id             = "subnet-yyyyyyyy"
    associate_public_ip   = false
    allowed_ingress_cidrs = ["10.0.0.0/16"]
    ssh_port              = 22
    key_name              = null
  }
}
