terraform {
  backend  {
    bucket = "your-terraform-state-bucket123456"     # ✅ Replace with your S3 bucket name
    key    = "global/s3/terraform.tfstate"     # File path inside the bucket
    region = "us-east-1"                       # ✅ Your AWS region
    encrypt = true                             # Encrypt the state file at rest
  }
}
