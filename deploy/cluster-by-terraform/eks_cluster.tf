module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "19.5.1"

  cluster_name    = "eks-container-fargate"
  cluster_version = "1.23"

  cluster_endpoint_public_access = true

  vpc_id                   = module.vpc.vpc_id
  subnet_ids               = module.vpc.private_subnets
  control_plane_subnet_ids = module.vpc.public_subnets

  # Fargate profiles use the cluster primary security group so these are not utilized
  create_cluster_security_group = false
  create_node_security_group    = false
  cluster_security_group_id     = module.sg.security_group_id

  fargate_profiles = {
    fp-default = {
      name = "fp-default"
      selectors = [
        {
          namespace = "kube-system"
        },
        {
          namespace = "default"
        }
      ]

      subnet_ids = module.vpc.private_subnets
    }

    fp-dev = {
      name = "fp-dev"
      selectors = [
        {
          namespace = "dev"
          labels = {
            env = "dev"
          }
        }
      ]

      subnet_ids = module.vpc.private_subnets
    }
  }
}
