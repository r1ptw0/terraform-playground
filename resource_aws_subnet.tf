resource "aws_subnet" "subnet" {
  for_each = local.subnets

  vpc_id            = each.value.vpc_id
  cidr_block        = each.value.cidr_block
  availability_zone = each.value.availability_zone

  tags = {
    Name = each.value.tags.Name
  }
}

