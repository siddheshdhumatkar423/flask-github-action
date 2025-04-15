terraform {
  backend "s3" {
    bucket = "my-terraform-state-bucket123456"   # 🔁 Replace with your actual S3 bucket name
    key    = "env/dev/terraform.tfstate"   # 📁 Path to state file inside the bucket
    region = "eu-west-2"                   # 🌍 Your AWS region
    encrypt = true                         # 🔒 Encrypt state file at rest
  }
}
