resource "local_file" "eks_cluster" {
    content  = templatefile("${path.module}/../eksctl/cluster.yaml.tftpl", {
        vpc_id         = module.vpc.vpc_id
        subnet_az_a_id = module.vpc.intra_subnets[0]
        subnet_az_b_id = module.vpc.intra_subnets[1]
    })

    filename = "${path.module}/../eksctl/cluster.yaml"
}
