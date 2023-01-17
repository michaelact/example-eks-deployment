# Deploy AWS EKS Fargate using `eksctl`, `kubectl` and `terraform`

## Requirements
1. [eksctl](https://eksctl.io/introduction/#installation): 0.124.0
2. [helm](https://helm.sh/docs/intro/install/): 3.10.3
3. [kubectl](https://kubernetes.io/docs/tasks/tools/#kubectl)
4. [Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli): 1.3.0

## Specify AWS Profile
1. Set AWS Profile to `exploration`: `export AWS_DEFAULT_PROFILE=exploration`

## Spawn the Infrastructure using `terraform`
1. Navigate to `/path/to/example-ecs-deployment/deploy/kubectl/terraform/` folder
2. Follow the instruction there

## Create cluster using `eksctl`
1. Navigate to `/path/to/example-ecs-deployment/deploy/kubectl/eksctl/` folder
2. Follow the instruction there

## Install the AWS Load Balancer Controller using `helm`
1. Navigate to `/path/to/example-ecs-deployment/deploy/kubectl/helm/` folder
2. Follow the instruction there

## Deploy the application using `kubectl`
1. Navigate to `/path/to/example-ecs-deployment/deploy/kubectl/app-manifest/` folder
2. Follow the instruction there

## Check Load Balancer URL
1. Open [EC2 Load Balancer Dashboard Console](https://us-east-2.console.aws.amazon.com/ec2/home?region=us-east-2#LoadBalancers:)
2. Switch to `us-east-2` region if you haven't
3. Copy the _DNS name_
4. Paste the URL to new browser tab
5. If you have seen the text below, congratulations you have successfully deployed the service in EKS Fargate!

```
Intro to Docker!
You just created a Node Express web application with Docker!
```

## Links and References
- https://kubernetes-sigs.github.io/aws-load-balancer-controller/v2.4/guide/ingress/spec/
- https://eksctl.io/usage/schema/
- https://blog.cloudcraft.co/containers-on-aws-ecs-eks-and-fargate/
- https://blog.sivamuthukumar.com/aws-load-balancer-controller-on-eks-cluster
- https://docs.aws.amazon.com/eks/latest/userguide/aws-load-balancer-controller.html
- https://docs.aws.amazon.com/eks/latest/userguide/alb-ingress.html
