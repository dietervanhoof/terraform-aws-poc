# Import instances module
module "instances" {
  source = "./modules/instances"

  # Pass default_tags
  default_tags = var.default_tags

  subnets         = var.subnets
  images          = var.images
  security-groups = var.security-groups
}

# Import images module
module "images" {
  source = "./modules/images"
}