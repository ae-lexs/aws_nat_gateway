resource "aws_vpc" "vpc" {
  cidr_block         = "10.0.0.0/16"
  instance_tenancy   = "default"
  enable_dns_support = true

  tags = {
    "MadeBy"          = var.made_by
    "MadeWith"        = "terraform"
    "Module/Resource" = "vpc"
    "Project"         = "aws_nat_gateway"
    "Name"            = "vpc"
  }
}

module "default_vpc_components" {
  source         = "../default_vpc_components"
  network_acl_id = aws_vpc.vpc.default_network_acl_id
  route_table_id = aws_vpc.vpc.default_route_table_id
  vpc_id         = aws_vpc.vpc.id
  made_by        = var.made_by
}

module "main_route_table" {
  source  = "../main_route_table"
  vpc_id  = aws_vpc.vpc.id
  made_by = var.made_by
}
