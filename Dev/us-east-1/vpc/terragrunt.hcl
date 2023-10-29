terraform {
  source = "tfr:///terraform-aws-modules/vpc/aws?version=5.1.2"
}

include "root" {
  path   = find_in_parent_folders()
  expose = "true"
}

inputs = {
  name = "vpc-${include.root.locals.environment}"
  cidr = "10.0.0.0/16"

  azs            = ["${include.root.locals.aws_region}a", "${include.root.locals.aws_region}b", "${include.root.locals.aws_region}c"]
  public_subnets = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]

  enable_nat_gateway = false
  enable_vpn_gateway = false

  tags = {
    Environment = "${include.root.locals.environment}"
    Region      = "${include.root.locals.aws_region}"
    Service     = "${basename(get_repo_root())}"
  }
}
