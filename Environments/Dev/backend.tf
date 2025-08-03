terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.67.0"
    }
  }
  backend "s3" {
    bucket = "terraform-infra-pipeline-bucket"
    key = "env/dev/terraform.tfstate"
    region = "ap-southeast-1"
  }
}

provider "aws" {
  # Configuration options
  region = var.aws_region_name
}