variable "bucket_names" {
  description = "Map of logical names to globally unique S3 bucket names."
  type        = map(string)
}
