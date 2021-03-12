resource "aws_route_table" "main_route_table" {
  vpc_id = var.vpc_id

  tags = {
    "MadeBy"          = var.made_by
    "MadeWith"        = "terraform"
    "Module/Resource" = "main_route_table"
    "Project"         = "aws_nat_gateway"
    "Name"            = "aws_nat_gateway_main_route_table"
  }
}

resource "aws_main_route_table_association" "main_route_table_and_us_east_1_vpc_association" {
  vpc_id         = var.vpc_id
  route_table_id = aws_route_table.main_route_table.id
}
