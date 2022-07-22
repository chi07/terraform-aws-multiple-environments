variable "aws_profile" {
  default = "default"
}
variable "aws_region" {
  default = "ap-southeast-1"
}
variable "env" {
  default = "dev"
}

variable azs {
  default = ["ap-southeast-1a", "ap-southeast-1b", "ap-southeast-1c"]
}