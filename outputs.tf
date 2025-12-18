output "s3_bucket_id" {
	description = "ID of the state S3 bucket"
	value       = module.s3.bucket_id
}

output "s3_bucket_arn" {
	description = "ARN of the state S3 bucket"
	value       = module.s3.bucket_arn
}

output "dynamodb_table_name" {
	description = "Name of the DynamoDB table used for state locking"
	value       = module.dynamodb.table_name
}

output "dynamodb_table_arn" {
	description = "ARN of the DynamoDB table used for state locking"
	value       = module.dynamodb.table_arn
}
