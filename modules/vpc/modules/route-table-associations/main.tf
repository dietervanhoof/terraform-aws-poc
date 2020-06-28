# Associate the private subnet with the routing table
resource "aws_route_table_association" "terraform-private-route-table-association" {
  subnet_id      = var.subnets.terraform-private-subnet.id
  route_table_id = var.routing-tables.terraform-private-routing-table.id
}

# Associate the public subnet with the routing table
resource "aws_route_table_association" "terraform-public-route-table-association" {
  subnet_id      = var.subnets.terraform-public-subnet.id
  route_table_id = var.routing-tables.terraform-public-routing-table.id
}