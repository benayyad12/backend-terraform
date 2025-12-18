
variable "bucket_name" {
  type = string
  description = "s3 bucket for terraform backend"
}

variable "dynamodb_name" {
  type = string
  description = "dynamo db table for state locking"
}

variable "backend_key" {
  type = string
  description = "path to terraform state file"
}

variable "region"{
  type = string
  description = "aws region"
  default = "eu-west-3"
}

variable "pay_mode" {
  type        = string
  description = "Billing mode for DynamoDB table (e.g. PAY_PER_REQUEST)"
  default     = "PAY_PER_REQUEST"
}

variable "hkey" {
  type        = string
  description = "Attribute to use as the hash (partition) key for DynamoDB"
  default     = "LockID"
}