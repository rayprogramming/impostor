terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
  backend "s3" {
    bucket = "rayprogramming-terraform"
    key    = "impostor"
    region = "us-east-2"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

data "aws_caller_identity" "current" {}

# Include the impostor server setup
module "impostor_server" {
  source = "./modules/impostor-server"
  instance_subnet = "subnet-fcd8b09b" //TODO make resource
}