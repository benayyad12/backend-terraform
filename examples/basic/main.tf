module "backend" {
  source         = "../../"
  bucket_name    = "example-tfstate-bucket"
  dynamodb_name  = "example-lock-table"
  pay_mode       = "PAY_PER_REQUEST"
  hkey           = "LockID"
  region         = "eu-west-3"
}
