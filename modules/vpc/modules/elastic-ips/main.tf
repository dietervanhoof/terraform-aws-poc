# Define an elastic ip for the bastion host
resource "aws_eip" "bastion-elastic-ip" {
  instance                  = var.instances.bastion.id
  vpc                       = true
  associate_with_private_ip = var.instances.bastion.private_ip
  tags = merge(
    var.default_tags,
    {
      Name = "Bastion Elastic IP"
    }
  )
}

# Define an elastic ip for the bastion host
resource "aws_eip" "terraform-nat-gateway-elastic-ip" {
  vpc = true
  tags = merge(
    var.default_tags,
    {
      Name = "Terraform NAT gateway Elastic IP"
    }
  )
}