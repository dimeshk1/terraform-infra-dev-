# terraform-infra-dev

Manages AWS infrastructure for the dev environment using Terraform.

## Resources

- S3 Buckets

## Remote State

State is stored remotely in S3 with DynamoDB state locking provisioned by `terraform-bootstrap`.

## Prerequisites

- Terraform >= 1.14.9
- AWS CLI configured with appropriate credentials

## Usage

```bash
terraform init
terraform plan
terraform apply
```

## CI/CD

GitHub Actions pipeline runs on every PR and push to `main`:

| Trigger | Jobs |
|---------|------|
| Pull Request | `fmt`, `validate`, `plan` (posted as PR comment) |
| Merge to `main` | `apply` (requires approval) |

## Inputs

| Variable | Description | Default |
|----------|-------------|---------|
| `aws_region` | AWS region | `us-east-1` |
| `project_name` | Project name for tagging | `terraform-infra-dev` |
| `environment` | Deployment environment | `dev` |

## Outputs

| Output | Description |
|--------|-------------|
| `first_bucket_name` | Name of the first S3 bucket |
| `first_bucket_arn` | ARN of the first S3 bucket |
| `second_bucket_name` | Name of the second S3 bucket |
| `second_bucket_arn` | ARN of the second S3 bucket |
