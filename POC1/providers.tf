#(which cloud I am talking to)

terraform {
  required_version = ">= 1.5.0" # Keeps it compatible with modern versions / OpenTofu

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0" # Locks it to the major 5.x version line to prevent breaking changes
    }
  }
}

provider "aws" {
  region = var.aws_region
}