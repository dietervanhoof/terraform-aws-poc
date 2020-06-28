output "internet-gateways" {
  value = {
    "terraform-gateway" : aws_internet_gateway.terraform-gateway
  }
}