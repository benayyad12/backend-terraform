# S3 Backend Module

Inputs
- `bucket_name` (string) - Optional name or prefix for the S3 bucket. If empty, a randomized suffix is used.
- `region` (string) - Informational AWS region for resources created by this module.

Outputs
- `bucket_id` - ID of the created S3 bucket
- `bucket_arn` - ARN of the created S3 bucket
- `bucket_domain_name` - Bucket domain name

Example

module "s3" {
  source      = "../modules/s3"
  bucket_name = "example-tfstate-bucket"
}
