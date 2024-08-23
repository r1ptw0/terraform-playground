
variable "region" {
  type    = string
  default = "ca-central-1"
}

variable "environments" {
  type    = list(string)
  default = ["prod1", "dev1", "sec1"]
}

variable "prefix" {
  type    = string
  default = "AcmeCorp"
}

/*
variable "vpc_cidrs" {
  type    = list(string)
  default = ["10.0.0.0/16", "10.1.0.0/16"]
}

*/
