/*
variable "regions" {
  type    = list(string)
  default = ["ca-central-1", "ca-east-1", "us-east-1"]
}
*/
variable "environments" {
  type    = list(string)
  default = ["sec", "prod1", "dev1", "prod2", "dev2"]
}

variable "prefix" {
  type    = string
  default = "rn"
}
variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}
