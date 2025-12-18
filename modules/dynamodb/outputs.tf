output "table_name" {
	description = "DynamoDB table name for state locking"
	value       = aws_dynamodb_table.statelock.name
}

output "table_arn" {
	description = "DynamoDB table ARN"
	value       = aws_dynamodb_table.statelock.arn
}
