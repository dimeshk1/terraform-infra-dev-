# terraform-infra-dev

Manages AWS infrastructure for the dev environment using Terraform.

## Resources

- S3 Buckets

## Remote State

State is stored remotely in S3 with S3 lockfiles enabled.

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

GitHub Actions pipeline runs on every PR and push to `dev` or `main`:

| Trigger | Jobs |
|---------|------|
| Pull Request | `fmt`, `validate`, `plan` (posted as PR comment) |
| Push to `dev` | `apply` to dev |
| Push to `main` | `apply` to production (GitHub `production` environment) |

## Inputs

| Variable | Description | Default |
|----------|-------------|---------|
| `aws_region` | AWS region | `us-east-1` |
| `project_name` | Project name for tagging | `terraform-infra-dev` |
| `environment` | Deployment environment | `dev` |
| `bucket_names` | Map of logical names to globally unique S3 bucket names | `{}` |

## Outputs

| Output | Description |
|--------|-------------|
| `bucket_names` | Map of bucket logical names to bucket names |
| `bucket_arns` | Map of bucket logical names to bucket ARNs |
