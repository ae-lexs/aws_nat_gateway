terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region     = var.aws_region
  access_key = var.aws_access_key_id
  secret_key = var.aws_access_secret_key
  profile    = var.aws_profile_name
}

module "networking" {
  source  = "./modules/networking"
  made_by = var.aws_profile_name
}
