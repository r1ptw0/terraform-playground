locals {
  vpcs = {
    for region in var.regions :
    "${var.prefix}-${region}-vpc" => {
      tags = {
        name = "${var.prefix}-${region}-vpc"
      }
    }
  }
}
