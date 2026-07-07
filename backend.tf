terraform {
  backend "s3" {
    bucket         = "terraform-bootstrap-dev-107282187171-state"
    key            = "sample-s3/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-bootstrap-dev-locks"
    encrypt        = true
  }
}
