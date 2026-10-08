terraform {
  backend "s3" {
    bucket = "terraform-s3-nam-07102026" 
    key    = "dev/terraform.tfstate" 
    region = "us-east-1"
  }
}

provider "aws" {
    region = "us-east-1"
}

#vpc
resource "aws_vpc" "my_vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags = {
    Name = "dev-vpc"
  }
}

#S3 Bucket
resource "aws_s3_bucket" "my_bucket" {
  bucket = "terraform-s3-nam-07102026" 

  tags = {
    Environment = "Dev"
  }
}

