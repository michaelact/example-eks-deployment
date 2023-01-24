# Create the EKS cluster using `eksctl`

`eksctl` is a simple CLI tool for creating and managing clusters on EKS.

## Requirements
1. [eksctl](https://github.com/aws/amazon-ecs-cli#installing): 0.124.0

## Spawn Resources
1. Provision the EKS Cluster: `eksctl create cluster -f cluster.yaml`
2. Create kubectl configuration file: `aws eks update-kubeconfig --region us-east-2 --name eks-cluster-exploration-fargate`

## Destroying Resources
1. Run `eksctl delete cluster -f cluster.yaml`

## Links and References
- https://eksctl.io/usage/schema/
