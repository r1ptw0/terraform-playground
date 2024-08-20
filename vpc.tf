resource "aws_vpc" "vpc" {
  for_each   = local.vpcs
  cidr_block = "10.0.0.0/16"
}
