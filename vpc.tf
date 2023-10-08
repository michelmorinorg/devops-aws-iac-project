#module "vpc" {
#  source = "terraform-aws-modules/vpc/aws"

#  name = "vpc-${var.PROJECT_NAME}"
#  cidr = "10.0.0.0/16"

#  azs            = ["${var.AWS_REGION}a", "${var.AWS_REGION}b", "${var.AWS_REGION}c"]
#  public_subnets = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

#  enable_nat_gateway = false
#  enable_vpn_gateway = false

#  tags = {
#    Terraform = "true"
#    project   = "${var.PROJECT_NAME}"
#  }
#}
