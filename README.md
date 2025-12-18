# backend-terraform
Reusable Terraform backend modules for S3 + DynamoDB state storage.

Usage

Basic usage example is available in the `examples/basic` folder. Use this repository as a module source (git or registry) and provide the required variables like `bucket_name` and `dynamodb_name`.

This repo exposes outputs for the created resources so consuming projects can reference them.
