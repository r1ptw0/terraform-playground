locals {
  vpcs = {
    for idx, environment in var.environments :
    "${var.prefix}-${environment}-vpc" => {
      cidr_block = "10.${idx}.0.0/16"
      #      cidr_block = var.vpc_cidrs[idx]
      tags = {
        Name = "${var.prefix}-${environment}-vpc"
      }
    }
  }

  subnets = merge(local.ext_subnets, local.int_subnets)
  ext_subnets = {
    for environment in var.environments :
    "${environment}-external" => {
      cidr_block        = cidrsubnet(aws_vpc.vpc["${var.prefix}-${environment}-vpc"].cidr_block, 8, 0)
      availability_zone = data.aws_availability_zones.available.names[0]
      vpc_id            = aws_vpc.vpc["${var.prefix}-${environment}-vpc"].id
      tags = {
        Name = "external"
      }
    }
  }
  int_subnets = {
    for environment in var.environments :
    "${environment}-internal" => {
      cidr_block        = cidrsubnet(aws_vpc.vpc["${var.prefix}-${environment}-vpc"].cidr_block, 8, 1)
      availability_zone = data.aws_availability_zones.available.names[0]
      vpc_id            = aws_vpc.vpc["${var.prefix}-${environment}-vpc"].id
      tags = {
        Name = "internal"
      }
    }
  }
}
