module "vpc" {
  source = "../../modules/vpc"

  aws_profile     = var.aws_profile
  aws_region      = var.aws_region
  azs             = local.azs[var.aws_region]
  cidr_block      = "10.11.0.0/16"
  env             = var.env
  name            = "my-app"
  private_subnets = ["10.11.1.0/24", "10.11.2.0/24", "10.11.3.0/24"]
  public_subnets  = ["10.11.101.0/24", "10.11.102.0/24", "10.11.103.0/24"]
}