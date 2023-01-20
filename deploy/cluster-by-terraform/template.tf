data "aws_caller_identity" "current" {}

resource "local_file" "eks_aws_alb_controller" {
    content  = templatefile("${path.module}/helm/helm-values-alb.yaml.tftpl", {
        vpc_id = module.vpc.vpc_id
    })

    filename = "${path.module}/helm/helm-values-alb.yaml"
}


resource "local_file" "eks_aws_alb_public" {
    content  = templatefile("${path.module}/kubectl/ingress.yaml.tftpl", {
        public_subnet_a_id  = module.vpc.public_subnets[0]
        public_subnet_b_id  = module.vpc.public_subnets[1]
    })

    filename = "${path.module}/kubectl/ingress.yaml"
}

resource "local_file" "eks_aws_alb_service_account" {
    content  = templatefile("${path.module}/kubectl/service-account.yaml.tftpl", {
        account_id = data.aws_caller_identity.current.account_id
    })

    filename = "${path.module}/kubectl/service-account.yaml"
}
