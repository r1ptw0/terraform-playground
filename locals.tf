locals {
  vpcs = {
    for region in var.regions :
    "${var.prefix}-${region}-vpc" => {
      cidr_block = var.vpc_cidr
      tags = {
        name = "${var.prefix}-${region}-vpc"
      }
    }
  }
}
