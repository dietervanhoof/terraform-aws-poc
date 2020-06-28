# Import vpcs module
module "vpcs" {
  source = "./modules/vpcs"

  # Pass default_tags
  default_tags = var.default_tags
}

# Import subnets module
module "subnets" {
  source = "./modules/subnets"

  # Pass default_tags
  default_tags = var.default_tags

  vpcs = var.vpcs
}

# Import security-groups module
module "security-groups" {
  source = "./modules/security-groups"

  # Pass default_tags
  default_tags = var.default_tags

  vpcs = var.vpcs
}

# Import internet-gateways module
module "internet-gateways" {
  source = "./modules/internet-gateways"

  # Pass default_tags
  default_tags = var.default_tags

  vpcs = var.vpcs
}

# Import elastic-ips module
module "elastic-ips" {
  source = "./modules/elastic-ips"

  # Pass default_tags
  default_tags = var.default_tags

  instances         = var.instances
  internet-gateways = var.internet-gateways
}

# Import nat-gateways module
module "nat-gateways" {
  source = "./modules/nat-gateways"

  # Pass default_tags
  default_tags = var.default_tags

  subnets           = var.subnets
  elastic-ips       = var.elastic-ips
  internet-gateways = var.internet-gateways
}

# Import routing-tables module
module "routing-tables" {
  source = "./modules/routing-tables"

  # Pass default_tags
  default_tags = var.default_tags

  vpcs              = var.vpcs
  internet-gateways = var.internet-gateways
  nat-gateways      = var.nat-gateways
}

# Import route-table-associations module
module "route-table-associations" {
  source = "./modules/route-table-associations"

  # Pass default_tags
  default_tags = var.default_tags

  subnets        = var.subnets
  routing-tables = var.routing-tables
}