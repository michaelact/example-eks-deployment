resource "local_file" "eks_cluster" {
    content  = templatefile("${path.module}/../eksctl/cluster.yaml.tftpl", {
        vpc_id              = module.vpc.vpc_id
        private_subnet_a_id = module.vpc.private_subnets[0]
        private_subnet_b_id = module.vpc.private_subnets[1]
        public_subnet_a_id  = module.vpc.public_subnets[0]
        public_subnet_b_id  = module.vpc.public_subnets[1]
        security_group_id   = module.sg.security_group_id
    })

    filename = "${path.module}/../eksctl/cluster.yaml"
}

resource "local_file" "eks_aws_alb_controller" {
    content  = templatefile("${path.module}/../helm/helm-values-alb.yaml.tftpl", {
        vpc_id              = module.vpc.vpc_id
    })

    filename = "${path.module}/../helm/helm-values-alb.yaml"
}


resource "local_file" "eks_aws_alb_public" {
    content  = templatefile("${path.module}/../app-manifest/ingress.yaml.tftpl", {
        public_subnet_a_id  = module.vpc.public_subnets[0]
        public_subnet_b_id  = module.vpc.public_subnets[1]
    })

    filename = "${path.module}/../app-manifest/ingress.yaml"
}
