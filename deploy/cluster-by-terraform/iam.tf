module "iam_role_for_service_accounts_eks" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-role-for-service-accounts-eks"
  version = "5.10.0"

  create_role = true

  role_name                              = "role-exploration-eks-fargate"
  attach_load_balancer_controller_policy = true
  oidc_providers = {
    aws-load-balancer = {
      provider_arn               = module.eks.oidc_provider_arn
      namespace_service_accounts = ["kube-system:aws-load-balancer"]
    }
  }
}
