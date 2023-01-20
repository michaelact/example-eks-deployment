module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "3.18.1"

  name = "vpc-container-fargate"
  cidr = "172.22.0.0/16"

  azs             = ["us-east-2a", "us-east-2b"]
  public_subnets  = ["172.22.0.0/24", "172.22.1.0/24"]
  private_subnets = ["172.22.2.0/24", "172.22.3.0/24"]

  enable_nat_gateway              = true
  single_nat_gateway              = true
  one_nat_gateway_per_az          = false
  create_database_subnet_group    = false
  create_elasticache_subnet_group = false
  enable_dns_hostnames            = true
  enable_dns_support              = true

  tags = {
    Environment = "test"
    Terraform   = "true"
  }
}

output "public_subnets" {
  value       = module.vpc.public_subnets
  description = "Network Public Subnets"
}

output "private_subnets" {
  value       = module.vpc.private_subnets
  description = "Network Private Subnets"
}
