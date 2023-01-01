terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
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
  region = "us-east-2"
  default_tags {
    tags = {
      Project   = "Impostor"
      CreatedBy = "rayprogramming/Impostor"
      ManagedBy = "Terraform"
    }
  }
}

data "aws_caller_identity" "current" {}

data "aws_route53_zone" "selected" {
  name = "iocafg.com."
}


# Include the impostor server setup
module "impostor_server" {
  source             = "./modules/impostor-server"
  private_key        = "~/.ssh/amongus.pem"
  zone_id            = data.aws_route53_zone.selected.id
  vpc_id             = module.vpc.vpc_id
  instance_availability_zone = module.vpc.azs[0]
  instance_subnet    = module.vpc.private_subnets[0]
  gameserver_subnets = module.vpc.public_subnets
  matchmaker_subnets = module.vpc.public_subnets
  instance_key_name  = "amongus"
}

module "vpn" {
  source = "./modules/vpn"
  server_password = var.vpn_password
  server_region = "us-east-2"
  server_username = var.vpn_username
  vpc_id             = module.vpc.vpc_id
  instance_availability_zone = module.vpc.azs[0]
  instance_subnet    = module.vpc.private_subnets[0]
}