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

module "infrastructure_backup_bucket" {
  source  = "./modules/infrastructure_backup_bucket"
  made_by = var.aws_profile_name
  bucket_name = "ae-lexs-aws-nat-gateway-infrastructure-backup"
}
