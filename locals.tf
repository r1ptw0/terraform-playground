locals {
  s3_buckets = {
    "${var.prefix}-s3-bucket" = {
      tags = {
        name = "${var.prefix}-s3-bucket"
      }
    }
  }
}