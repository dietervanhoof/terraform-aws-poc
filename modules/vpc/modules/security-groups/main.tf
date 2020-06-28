resource "aws_security_group" "allow-external-ssh" {
  name        = "allow-external-ssh"
  description = "Allow external SSH inbound traffic"
  vpc_id      = var.vpcs.terraform-vpc.id

  ingress {
    description = "SSH from outside the network"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = merge(
    var.default_tags,
    {
      Name = "Allow external SSH inbound traffic"
    }
  )
}

resource "aws_security_group" "allow-internal-ssh" {
  name        = "allow-internal-ssh"
  description = "Allow internal SSH inbound traffic"
  vpc_id      = var.vpcs.terraform-vpc.id

  ingress {
    description = "SSH from inside the network"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = [var.vpcs.terraform-vpc.cidr_block]
  }

  tags = merge(
    var.default_tags,
    {
      Name = "Allow internal SSH inbound traffic"
    }
  )
}

resource "aws_security_group" "allow-all-outbound-traffic" {
  name        = "allow-all-outbound-traffic"
  description = "Allow all outbound traffic"
  vpc_id      = var.vpcs.terraform-vpc.id

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = merge(
    var.default_tags,
    {
      Name = "Allow all outbound traffic"
    }
  )
}