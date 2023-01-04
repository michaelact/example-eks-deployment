# Deploy AWS EKS Fargate using `eksctl`, `kubectl` and `terraform`

## Requirements
1. [eksctl](https://github.com/aws/amazon-ecs-cli#installing): 0.124.0
2. [helm](https://helm.sh/docs/intro/install/): 3.10.3
3. [kubectl](https://eksctl.io/introduction/#installation)
4. [Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli): 1.3.0

## Specify AWS Profile
1. Set AWS Profile to `exploration`: `export AWS_DEFAULT_PROFILE=exploration`

## Spawn the Infrastructure
1. Navigate to `/path/to/example-ecs-deployment/deploy/eksctl/terraform/` folder
2. Follow the instruction there

## Create cluster using `eksctl`
1. Navigate to `/path/to/example-ecs-deployment/deploy/eksctl/eksctl/` folder
2. Follow the instruction there

## Install the AWS Load Balancer Controller using `helm`
1. Navigate to `/path/to/example-ecs-deployment/deploy/eksctl/helm/` folder
2. Follow the instruction there

## Deploy the application using `kubectl`
1. Navigate to `/path/to/example-ecs-deployment/deploy/eksctl/kubectl/` folder
2. Follow the instruction there

## References
- https://kubernetes-sigs.github.io/aws-load-balancer-controller/v2.4/guide/ingress/spec/
- https://eksctl.io/usage/schema/
- https://blog.cloudcraft.co/containers-on-aws-ecs-eks-and-fargate/
- https://blog.sivamuthukumar.com/aws-load-balancer-controller-on-eks-cluster
- https://docs.aws.amazon.com/eks/latest/userguide/aws-load-balancer-controller.html
- https://docs.aws.amazon.com/eks/latest/userguide/alb-ingress.html
