terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.69.0"
    }
  }
  # backend "s3" {
  #   key    = "your-bucket"
  #   bucket = "your-file"
  #   region = "your-region"
  # }
}

provider "aws" {
  region = var.aws_region
  default_tags {
    tags = {
      "environment" = var.environment
      "stack_name"  = "${var.environment}-${var.platform_name}"
      "managedBy"   = "terraform"
    }
  }
}
