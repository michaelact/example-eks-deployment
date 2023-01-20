module "sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "~> 4.16.2"

  name        = "security-group-container-fargate"
  description = "Security group for fargate EKS cluster"
  vpc_id      = module.vpc.vpc_id

  ingress_cidr_blocks = ["${var.your_ip_address}/32", module.vpc.vpc_cidr_block]
  ingress_rules       = ["http-80-tcp", "https-443-tcp", "dns-udp", "dns-tcp"]

  egress_cidr_blocks = ["0.0.0.0/0"]
  egress_rules       = ["all-all"]

  tags = {
    Organization = "gdplabs"
    Project      = "glair"
    Terraform    = "true"
  }
}

output "security_group_id" {
  value       = module.sg.security_group_id
  description = "Security Group ID of EKS Cluster"
}
