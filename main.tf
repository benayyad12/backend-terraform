module "s3" {
  source      = "./modules/s3"
  bucket_name = var.bucket_name
  region      = var.region
}

module "dynamodb" {
  source        = "./modules/dynamodb"
  dynamodb_name = var.dynamodb_name
  pay_mode      = var.pay_mode
  hkey          = var.hkey
}