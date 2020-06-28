# Create a VPC
resource "aws_vpc" "terraform-vpc" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_hostnames = true
  enable_dns_support   = true
  tags = merge(
    var.default_tags,
    {
      Name = "terraform-vpc"
    }
  )
}