terraform {
  backend "s3" {
    bucket         = "devops-terraform-state"
    key            = "state/terraform.tfstate"
    region         = "eu-south-1"          
    dynamodb_table = "terraform-lock-table"
    encrypt        = true
  }
}