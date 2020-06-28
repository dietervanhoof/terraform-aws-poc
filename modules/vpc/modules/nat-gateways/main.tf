resource "aws_nat_gateway" "terraform-gateway" {
  allocation_id = var.elastic-ips.terraform-nat-gateway-elastic-ip.id
  subnet_id     = var.subnets.terraform-public-subnet.id
  tags = merge(
    var.default_tags,
    {
      Name = "Terraform NAT gateway"
    }
  )
}