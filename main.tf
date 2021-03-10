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

resource "aws_vpc" "us_east_1_vpc" {
  cidr_block         = "10.0.0.0/16"
  instance_tenancy   = "default"
  enable_dns_support = true

  tags = {
    "MadeBy"          = "terraform_general_cli_user"
    "MadeWith"        = "terraform"
    "Module/Resource" = "vpc"
    "Project"         = "aws_nat_gateway"
    "Name"            = "us_east_1_vpc"
  }
}

resource "aws_default_network_acl" "default_network_acl" {
  default_network_acl_id = aws_vpc.us_east_1_vpc.default_network_acl_id

  ingress {
    protocol   = -1
    rule_no    = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }

  egress {
    protocol   = -1
    rule_no    = 100
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    to_port    = 0
  }

  tags = {
    "MadeBy"          = "terraform_general_cli_user"
    "MadeWith"        = "terraform"
    "Module/Resource" = "default_network_acl"
    "Project"         = "aws_nat_gateway"
    "Name"            = "default_network_acl"
  }
}

resource "aws_default_route_table" "default_route_table" {
  default_route_table_id = aws_vpc.us_east_1_vpc.default_route_table_id

  tags = {
    "MadeBy"          = "terraform_general_cli_user"
    "MadeWith"        = "terraform"
    "Module/Resource" = "default_route_table"
    "Project"         = "aws_nat_gateway"
    "Name"            = "default_route_table"
  }
}

resource "aws_route_table" "main_route_table" {
  vpc_id = aws_vpc.us_east_1_vpc.id

  tags = {
    "MadeBy"          = "terraform_general_cli_user"
    "MadeWith"        = "terraform"
    "Module/Resource" = "aws_route_table"
    "Project"         = "aws_nat_gateway"
    "Name"            = "main_route_table"
  }
}

resource "aws_main_route_table_association" "main_route_table_and_us_east_1_vpc_association" {
  vpc_id         = aws_vpc.us_east_1_vpc.id
  route_table_id = aws_route_table.main_route_table.id
}
