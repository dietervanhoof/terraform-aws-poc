output "nat-gateways" {
  value = {
    "terraform-gateway" : aws_nat_gateway.terraform-gateway
  }
}