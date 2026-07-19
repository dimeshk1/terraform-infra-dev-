terraform {
  backend "s3" {
    bucket       = "terraform-bootstrap-dev-107282187171-state"
    #key          = "prod/terraform.tfstate"
    key         = "prod/s3-prod-state-v1"
    region       = "us-east-1"
    encrypt      = true
    use_lockfile = true
  }
}
