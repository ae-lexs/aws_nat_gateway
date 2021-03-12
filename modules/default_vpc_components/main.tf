resource "aws_default_network_acl" "default_network_acl" {
  default_network_acl_id = var.network_acl_id

  ingress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    protocol   = -1
    rule_no    = 100
    to_port    = 0
  }

  egress {
    action     = "allow"
    cidr_block = "0.0.0.0/0"
    from_port  = 0
    protocol   = -1
    rule_no    = 100
    to_port    = 0
  }

  tags = {
    "MadeBy"          = "terraform_general_cli_user"
    "MadeWith"        = "terraform"
    "Module/Resource" = "default_vpc_components"
    "Project"         = "aws_nat_gateway"
    "Name"            = "default_network_acl"
  }
}

resource "aws_default_route_table" "default_route_table" {
  default_route_table_id = var.route_table_id

  tags = {
    "MadeBy"          = "terraform_general_cli_user"
    "MadeWith"        = "terraform"
    "Module/Resource" = "default_vpc_components"
    "Project"         = "aws_nat_gateway"
    "Name"            = "default_route_table"
  }
}

resource "aws_default_security_group" "default_security_group" {
  vpc_id = var.vpc_id

  ingress = [{
    cidr_blocks      = []
    description      = "Allow inbound traffic from network interfaces (and their associated instances) that are assigned to the same security group."
    from_port        = 0
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = -1
    security_groups  = []
    self             = true
    to_port          = 0
  }]

  egress = [{
    cidr_blocks      = ["0.0.0.0/0"]
    description      = "Allow all outbound IPv4 traffic."
    from_port        = 0
    ipv6_cidr_blocks = []
    prefix_list_ids  = []
    protocol         = -1
    security_groups  = []
    self             = false
    to_port          = 0
  }]

  tags = {
    "MadeBy"          = "terraform_general_cli_user"
    "MadeWith"        = "terraform"
    "Module/Resource" = "default_vpc_components"
    "Project"         = "aws_nat_gateway"
    "Name"            = "default_security_group"
  }
}
