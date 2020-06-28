output "subnets" {
  value = {
    "terraform-private-subnet" : aws_subnet.terraform-private-subnet
    "terraform-public-subnet" : aws_subnet.terraform-public-subnet
  }
}