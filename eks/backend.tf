terraform {
  required_version = ">= 1.12.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.49.0"
    }
  }

  backend "s3" {
    bucket         = "surendar13"
    key            = "eks/terraform.tfstate"
    region         = "us-east-1"
    use_lockfile = "Lock-Files"
    encrypt        = true
  }
}

provider "aws" {
  region = "us-east-1"
}
