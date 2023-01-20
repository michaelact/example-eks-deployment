# Deploy AWS EKS Fargate using `eksctl`, `kubectl` and `terraform`

## Requirements
1. [helm](https://helm.sh/docs/intro/install/): 3.10.3
2. [kubectl](https://kubernetes.io/docs/tasks/tools/#kubectl)
3. [Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli): 1.3.0

## Spawn the Infrastructure using `terraform`
1. Run `terraform init`: Download terraform modules
2. Run `terraform plan`: Check what resources will be provisioned
3. Run `terraform apply`: Provision the infrastructure!

## Create Kubernetes Config File
1. Run `aws eks update-kubeconfig --region us-east-2 --name eks-container-fargate`: Create kubectl configuration file.

## Schedule `core-dns` onto Fargate
1. Run `kubectl patch deployment coredns -n kube-system --type json -p='[{"op": "remove", "path": "/spec/template/metadata/annotations/eks.amazonaws.com~1compute-type"}]'`

## Install the AWS Load Balancer Controller using `helm`
1. Navigate to `/path/to/example-ecs-deployment/deploy/terraform/helm/` folder
2. Follow the instruction there

## Deploy the application using `kubectl`
1. Navigate to `/path/to/example-ecs-deployment/deploy/terraform/kubectl/` folder
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
- https://blog.cloudcraft.co/containers-on-aws-ecs-eks-and-fargate/
- https://blog.sivamuthukumar.com/aws-load-balancer-controller-on-eks-cluster
- https://docs.aws.amazon.com/eks/latest/userguide/aws-load-balancer-controller.html
- https://docs.aws.amazon.com/eks/latest/userguide/alb-ingress.html
- https://docs.aws.amazon.com/eks/latest/userguide/fargate-getting-started.html
