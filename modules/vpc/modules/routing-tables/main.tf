# Set up the private subnet routing table
resource "aws_route_table" "terraform-private-routing-table" {
  vpc_id = var.vpcs.terraform-vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = var.nat-gateways.terraform-gateway.id
  }
  tags = merge(
    var.default_tags,
    {
      Name = "Terraform private subnet routing table"
    }
  )
}

# Set up the public subnet routing table
resource "aws_route_table" "terraform-public-routing-table" {
  vpc_id = var.vpcs.terraform-vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.internet-gateways.terraform-gateway.id
  }
  tags = merge(
    var.default_tags,
    {
      Name = "Terraform public subnet routing table"
    }
  )
}