terraform {
  backend "s3" {
    bucket         = "your-terraform-state-bucket123456"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    encrypt        = true
    dynamodb_table = "terraform-lock-table"
  }
}

