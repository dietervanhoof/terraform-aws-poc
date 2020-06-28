# Define the internet gateway
resource "aws_internet_gateway" "terraform-gateway" {
  vpc_id = var.vpcs.terraform-vpc.id
  tags = merge(
    var.default_tags,
    {
      Name = "Terraform Internet gateway"
    }
  )
}