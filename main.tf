terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

provider "aws" {
  region                  = var.aws_region
  shared_credentials_file = var.aws_credentials_file_path
  profile                 = var.aws_profile_name
}

module "networking" {
  source  = "./modules/networking"
  made_by = var.aws_profile_name
}
