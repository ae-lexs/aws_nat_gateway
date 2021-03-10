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

resource "aws_vpc" "vpc_us_east_1" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    "MadeBy"          = "terraform_general_cli_user"
    "MadeWith"        = "terraform"
    "Module/Resource" = "vpc"
    "Project"         = "aws_nat_gateway"
    "Name"            = "vpc_us_east_1"
  }
}

resource "aws_route_table" "main_route_table" {
  vpc_id = aws_vpc.vpc_us_east_1.id

  tags = {
    "MadeBy"          = "terraform_general_cli_user"
    "MadeWith"        = "terraform"
    "Module/Resource" = "aws_route_table"
    "Project"         = "aws_nat_gateway"
    "Name"            = "main_route_table"
  }
}

resource "aws_main_route_table_association" "main_route_table_and_vpc_us_east_1_association" {
  vpc_id         = aws_vpc.vpc_us_east_1.id
  route_table_id = aws_route_table.main_route_table.id
}
