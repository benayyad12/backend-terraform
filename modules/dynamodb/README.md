# DynamoDB Backend Module

Inputs
- `dynamodb_name` (string) - Name of the DynamoDB table
- `pay_mode` (string) - Billing mode (e.g. `PAY_PER_REQUEST`)
- `hkey` (string) - Attribute to use as the hash (partition) key for the table

Outputs
- `table_name` - Name of the created DynamoDB table
- `table_arn` - ARN of the created DynamoDB table

Example

module "dynamodb" {
  source        = "../modules/dynamodb"
  dynamodb_name = "example-lock-table"
  pay_mode      = "PAY_PER_REQUEST"
  hkey          = "LockID"
}
