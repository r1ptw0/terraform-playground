resource "aws_s3_bucket" "s3_bucket" {
  for_each = local.s3_buckets
  bucket   = "${var.prefix}-${random_string.random.result}-s3-bucket"
  tags = {
    name = each.value.tags.name
  }
}