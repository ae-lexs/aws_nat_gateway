resource "aws_vpc" "vpc" {
  cidr_block         = "10.0.0.0/16"
  instance_tenancy   = "default"
  enable_dns_support = true

  tags = {
    "MadeBy"          = var.made_by
    "MadeWith"        = "terraform"
    "Module/Resource" = "networking"
    "Project"         = "aws_nat_gateway"
    "Name"            = "aws_nat_gateway_vpc"
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

resource "aws_internet_gateway" "internet_gateway" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    "MadeBy"          = var.made_by
    "MadeWith"        = "terraform"
    "Module/Resource" = "networking"
    "Project"         = "aws_nat_gateway"
    "Name"            = "aws_nat_gateway_internet_gateway"
  }
}

resource "aws_eip" "nat_gateway_elastic_ip" {
  vpc = true

  tags = {
    "MadeBy"          = var.made_by
    "MadeWith"        = "terraform"
    "Module/Resource" = "networking"
    "Project"         = "aws_nat_gateway"
    "Name"            = "aws_nat_gateway_nat_gateway_elastic_ip"
  }
}

resource "aws_nat_gateway" "nat_gateway" {
  allocation_id = aws_eip.nat_gateway_elastic_ip.id
  subnet_id     = aws_subnet.public_subnet_east_1a.id

  tags = {
    "MadeBy"          = var.made_by
    "MadeWith"        = "terraform"
    "Module/Resource" = "networking"
    "Project"         = "aws_nat_gateway"
    "Name"            = "aws_nat_gateway_nat_gateway"
  }
}

resource "aws_route_table" "public_route_table" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.internet_gateway.id
  }

  tags = {
    "MadeBy"          = var.made_by
    "MadeWith"        = "terraform"
    "Module/Resource" = "networking"
    "Project"         = "aws_nat_gateway"
    "Name"            = "aws_nat_gateway_public_route_table"
  }
}

resource "aws_route_table" "private_route_table" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat_gateway.id
  }

  tags = {
    "MadeBy"          = var.made_by
    "MadeWith"        = "terraform"
    "Module/Resource" = "networking"
    "Project"         = "aws_nat_gateway"
    "Name"            = "aws_nat_gateway_private_route_table"
  }
}

resource "aws_subnet" "public_subnet_east_1a" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "10.0.0.0/24"
  availability_zone       = "us-east-1a"
  map_public_ip_on_launch = true

  tags = {
    "MadeBy"          = var.made_by
    "MadeWith"        = "terraform"
    "Module/Resource" = "networking"
    "Project"         = "aws_nat_gateway"
    "Name"            = "aws_nat_gateway_public_subnet_east_1a"
  }
}

resource "aws_route_table_association" "public_route_table_association_public_subnet_east_1a" {
  subnet_id      = aws_subnet.public_subnet_east_1a.id
  route_table_id = aws_route_table.public_route_table.id
}

resource "aws_subnet" "public_subnet_east_1b" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = "us-east-1b"
  map_public_ip_on_launch = true

  tags = {
    "MadeBy"          = var.made_by
    "MadeWith"        = "terraform"
    "Module/Resource" = "networking"
    "Project"         = "aws_nat_gateway"
    "Name"            = "aws_nat_gateway_public_subnet_east_1b"
  }
}

resource "aws_route_table_association" "public_route_table_association_public_subnet_east_1b" {
  subnet_id      = aws_subnet.public_subnet_east_1b.id
  route_table_id = aws_route_table.public_route_table.id
}

resource "aws_subnet" "private_subnet_east_1c" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "10.0.2.0/24"
  availability_zone       = "us-east-1c"
  map_public_ip_on_launch = true

  tags = {
    "MadeBy"          = var.made_by
    "MadeWith"        = "terraform"
    "Module/Resource" = "networking"
    "Project"         = "aws_nat_gateway"
    "Name"            = "aws_nat_gateway_private_subnet_east_1c"
  }
}

resource "aws_route_table_association" "public_route_table_association_private_subnet_east_1c" {
  subnet_id      = aws_subnet.private_subnet_east_1c.id
  route_table_id = aws_route_table.private_route_table.id
}

resource "aws_subnet" "private_subnet_east_1d" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "10.0.3.0/24"
  availability_zone       = "us-east-1d"
  map_public_ip_on_launch = true

  tags = {
    "MadeBy"          = var.made_by
    "MadeWith"        = "terraform"
    "Module/Resource" = "networking"
    "Project"         = "aws_nat_gateway"
    "Name"            = "aws_nat_gateway_private_subnet_east_1d"
  }
}

resource "aws_route_table_association" "public_route_table_association_private_subnet_east_1d" {
  subnet_id      = aws_subnet.private_subnet_east_1d.id
  route_table_id = aws_route_table.private_route_table.id
}
