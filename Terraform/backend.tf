terraform {
  backend "s3" {
    bucket = "demo-nobelbucket"
    key    = "techaxis-finalproject/terraform.tfstate"
    region = "us-east-1"
  }
}

