output "vpcs" {
  value = module.vpcs.vpcs
}

output "subnets" {
  value = module.subnets.subnets
}

output "security-groups" {
  value = module.security-groups.security-groups
}

output "internet-gateways" {
  value = module.internet-gateways.internet-gateways
}

output "elastic-ips" {
  value = module.elastic-ips.elastic-ips
}

output "nat-gateways" {
  value = module.nat-gateways.nat-gateways
}

output "routing-tables" {
  value = module.routing-tables.routing-tables
}