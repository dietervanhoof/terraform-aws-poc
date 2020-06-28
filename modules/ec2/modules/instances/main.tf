# Define the bastion instance
resource "aws_instance" "bastion" {
  ami                         = var.images.amazon-linux-2.id
  instance_type               = "t2.micro"
  associate_public_ip_address = true
  subnet_id                   = var.subnets.terraform-public-subnet.id
  private_ip                  = "10.0.1.10"
  key_name                    = "Admin-keypair"
  vpc_security_group_ids = [
    var.security-groups.allow-all-outbound-traffic.id,
    var.security-groups.allow-external-ssh.id
  ]
  tags = merge(
    var.default_tags,
    {
      Name = "Bastion"
    }
  )
}

# Define the acceptance instance
resource "aws_instance" "acceptance" {
  ami                         = var.images.amazon-linux-2.id
  instance_type               = "t2.micro"
  associate_public_ip_address = false
  subnet_id                   = var.subnets.terraform-private-subnet.id
  private_ip                  = "10.0.0.10"
  key_name                    = "Admin-keypair"
  vpc_security_group_ids = [
    var.security-groups.allow-all-outbound-traffic.id,
    var.security-groups.allow-internal-ssh.id
  ]
  tags = merge(
    var.default_tags,
    {
      Name = "Acceptance"
    }
  )
}