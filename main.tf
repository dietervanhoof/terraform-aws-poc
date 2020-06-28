# Configure the AWS Provider
provider "aws" {
  version = "~> 2.0"
}

# Import VPC module
module "vpc" {
  source = "./modules/vpc"

  # Pass default_tags
  default_tags = var.default_tags

  # Pass VPC variables
  vpcs                     = module.vpc.vpcs
  internet-gateways        = module.vpc.internet-gateways
  elastic-ips              = module.vpc.elastic-ips
  subnets                  = module.vpc.subnets
  nat-gateways             = module.vpc.nat-gateways
  routing-tables           = module.vpc.routing-tables
  # Pass EC2 variables
  instances                = module.ec2.instances
}

# Import EC2 module
module "ec2" {
  source = "./modules/ec2"

  # Pass default_tags
  default_tags = var.default_tags
  # Pass VPC variables
  security-groups          = module.vpc.security-groups
  subnets                  = module.vpc.subnets
  # Pass EC2 variables
  images                   = module.ec2.images
}