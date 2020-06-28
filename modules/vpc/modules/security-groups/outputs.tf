output "security-groups" {
  value = {
    "allow-external-ssh" : aws_security_group.allow-external-ssh
    "allow-internal-ssh" : aws_security_group.allow-internal-ssh
    "allow-all-outbound-traffic" : aws_security_group.allow-all-outbound-traffic
  }
}