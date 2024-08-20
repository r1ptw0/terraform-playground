variable "regions" {
  type    = list(string)
  default = ["ca-central-1", "ca-east-1", "us-east-1"]
}
variable "prefix" {
  type = string
}
variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}
