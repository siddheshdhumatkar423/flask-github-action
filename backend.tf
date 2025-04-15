terraform {
  backend "s3" {
    bucket         = "your-terraform-state-bucket123456"        # ✅ Replace with your actual S3 bucket name
    key            = "global/s3/terraform.tfstate"         # Path within the bucket to store the state file
    region         = "us-east-1"                           # ✅ Your AWS region
    encrypt        = true                                  # Enable SSE encryption at rest
            
  }
}
