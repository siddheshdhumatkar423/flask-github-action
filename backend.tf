# s3-backend.tf

provider "aws" {
  region = "us-east-1"  # Change to your desired region
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = "my-terraform-state-bucket-1234"  # Change to a globally unique name

  versioning {
    enabled = true
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }

  tags = {
    Name        = "Terraform State Bucket"
    Environment = "dev"
  }
}

