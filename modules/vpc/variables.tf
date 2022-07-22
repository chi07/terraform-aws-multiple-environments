variable "vpc_subnet_octet" {
  default = ""
}
variable "env" {
  default = ""
}

variable "cidr_block" {}

variable "name" {
  type    = string
  default = "app"
}

variable "azs" {
  default = ["ap-southeast-1a", "ap-southeast-1b", "ap-southeast-1c"]
}

variable "private_subnets" {
  type = list(string)
}
variable "public_subnets" {
  type = list(string)
}

variable "aws_profile" {
  default = "default"
}
variable "aws_region" {
  default = "ap-southeast-1"
}