# Define the private subnet
resource "aws_subnet" "terraform-private-subnet" {
  vpc_id     = var.vpcs.terraform-vpc.id
  cidr_block = "10.0.0.0/24"

  tags = merge(
    var.default_tags,
    {
      Name = "Terraform private subnet"
    }
  )
}

# Define the public subnet
resource "aws_subnet" "terraform-public-subnet" {
  vpc_id     = var.vpcs.terraform-vpc.id
  cidr_block = "10.0.1.0/24"

  tags = merge(
    var.default_tags,
    {
      Name = "Terraform public subnet"
    }
  )
}