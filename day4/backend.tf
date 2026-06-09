terraform {
  backend "s3" {
    bucket = "jim-s3-demo-dev-ops"
    key    = "path/to/my/key"
    region = "us-east-1"
    dynamodb_table = "terraform_lock"
  }
}
