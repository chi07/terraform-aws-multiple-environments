variable AWS_REGION {
  default = "ap-southeast-1"
}

variable "aws_profile" {}
variable "aws_region" {}
variable "env" {
  default = "dev"
}

variable azs {
  type = list(any)
}