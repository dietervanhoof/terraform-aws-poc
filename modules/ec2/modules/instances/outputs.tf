output "instances" {
  value = {
    "bastion" : aws_instance.bastion
    "acceptance" : aws_instance.acceptance
  }
}