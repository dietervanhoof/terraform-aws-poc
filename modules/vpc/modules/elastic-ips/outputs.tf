output "elastic-ips" {
  value = {
    "bastion-elastic-ip" : aws_eip.bastion-elastic-ip
    "terraform-nat-gateway-elastic-ip" : aws_eip.terraform-nat-gateway-elastic-ip
  }
}