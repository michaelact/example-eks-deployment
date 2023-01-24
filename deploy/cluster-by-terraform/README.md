# Deploy AWS EKS Fargate using `helm`, `eksctl`, `kubectl` and `terraform`

## Requirements
1. [helm](https://helm.sh/docs/intro/install/): 3.10.3
2. [kubectl](https://kubernetes.io/docs/tasks/tools/#kubectl)
3. [Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli): 1.3.0

## Spawn the Infrastructure using `terraform`

Terraform is an infrastructure as code tool that lets you build, change, and version cloud resources safely and efficiently.

- Amazon Virtual Private Cloud (Amazon VPC) enables you to launch AWS resources into a virtual network that you've defined. This virtual network closely resembles a traditional network that you'd operate in your own data center, with the benefits of using the scalable infrastructure of AWS.
- AWS Security Group acts as a virtual firewall for your EC2 instances to control incoming and outgoing traffic.

1. Download terraform modules: `terraform init`
2. Check what resources will be provisioned: `terraform plan`
3. Provision the infrastructure: `terraform apply`

## Create Kubernetes Config File

The kubectl config file is a configuration file that stores all the information necessary to interact with a Kubernetes cluster. It contains the following information:

- The name of the Kubernetes cluster
- The location of the Kubernetes API server
- The credentials (username and password) for authenticating with the Kubernetes API server
- The names of all contexts defined in the cluster

1. Create kubectl configuration file: `aws eks update-kubeconfig --region us-east-2 --name eks-container-fargate`

The file will be stored on `$HOME/.kube/config`.

## Schedule `core-dns` onto Fargate

This pattern describes the steps to automate the deployment of Kubernetes CoreDNS pods onto an Amazon Elastic Kubernetes Service (Amazon EKS) cluster on the Amazon Web Services (AWS) Cloud using AWS Fargate when not creating the cluster using eksctl. 

CoreDNS is a flexible, extensible Domain Name System (DNS) server that can serve as the Kubernetes Cluster DNS. The CoreDNS pods provide name resolution for all pods in the cluster. When you launch an Amazon EKS cluster with at least one node, two replicas of the CoreDNS image are deployed by default, regardless of the number of nodes deployed in your cluster. 

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
- https://loft.sh/blog/kubectl-get-context-its-uses-and-how-to-get-started/
- https://docs.aws.amazon.com/prescriptive-guidance/latest/patterns/deploy-coredns-on-amazon-eks-with-fargate-automatically-using-terraform-and-python.html
- https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html
- https://www.checkpoint.com/cyber-hub/cloud-security/what-is-aws-security-groups/
