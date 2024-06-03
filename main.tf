provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket  = "sunny-test-bucket-fsgef"
    key     = "terraform.tfstate"
    region  = "us-east-1"
    encrypt = true
  }
}