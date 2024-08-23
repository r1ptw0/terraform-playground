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

variable "vpc_cidrs" {
  type    = list(string)
  default = ["10.0.0.0/16", "10.1.0.0/16", "10.2.0.0/16", "10.3.0.0/16", "10.4.0.0/16"]
}
