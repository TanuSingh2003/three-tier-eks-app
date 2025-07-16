provider "aws" {
  region = "ap-south-1"
}

terraform {
  backend "s3" {
    bucket         = "3tier-terraform-tanu-singh-2025"  # your exact bucket name
    key            = "3-tier-project/terraform.tfstate"
    region         = "ap-south-1"
    dynamodb_table = "terraform-lock"
  }

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

