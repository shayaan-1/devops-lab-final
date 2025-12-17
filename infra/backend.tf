terraform {
  backend "s3" {
    bucket         = "devops-terraform-state-shayaan-2025"
    key            = "state/terraform.tfstate"
    region         = "us-east-1"          
    dynamodb_table = "terraform-lock-table"
    encrypt        = true
  }
}