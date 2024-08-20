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
  subnets = {
    for region in var.regions :
    "external" => {
      cidr_block        = cidrsubnet(aws_vpc.vpc["${var.prefix}-${region}-vpc"].cidr_block, 8, 0)
      availability_zone = data.aws_availability_zones.available.names[0]
      vpc_id            = aws_vpc.vpc["${var.prefix}-${region}-vpc"].id
    }
  }
}
