module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name = "${var.name}-${var.env}-vpc"
  cidr = var.cidr_block

  azs             = var.azs
  private_subnets = var.private_subnets
  public_subnets  = var.public_subnets


  # needed for load balancer
  private_subnet_tags = {
    "kubernetes.io/cluster/${var.name}-${var.env}-cluster" = "shared"
    "kubernetes.io/role/internal-elb"                   = 1
  }
  public_subnet_tags = {
    "kubernetes.io/cluster/${var.name}-${var.env}-cluster" = "shared"
    "kubernetes.io/role/elb"                            = 1
  }

  enable_nat_gateway   = true
  single_nat_gateway   = true
  enable_dns_hostnames = true
  reuse_nat_ips        = true
  external_nat_ip_ids  = aws_eip.nat.*.id

  tags = {
    Terraform   = "true"
    Environment = var.env
  }
}
