output "bucket_id" {
	description = "S3 bucket id"
	value       = aws_s3_bucket.s3_bkt.id
}

output "bucket_arn" {
	description = "S3 bucket arn"
	value       = aws_s3_bucket.s3_bkt.arn
}

output "bucket_domain_name" {
	description = "S3 bucket domain name"
	value       = aws_s3_bucket.s3_bkt.bucket_domain_name
}
