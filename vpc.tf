resource "aws_vpc" "vpc" {
  for_each   = local.vpcs
  cidr_block = each.value.cidr_block
  tags = {
    Name = each.value.tags.Name
  }
}
