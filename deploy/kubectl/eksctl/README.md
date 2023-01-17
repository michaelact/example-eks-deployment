# Create the EKS cluster using `eksctl`

## Requirements
1. [eksctl](https://github.com/aws/amazon-ecs-cli#installing): 0.124.0

## Spawn Resources
1. Run `eksctl create cluster -f cluster.yaml`: Provision the infrastructure!
2. Run `aws eks update-kubeconfig --region us-east-2 --name eks-cluster-exploration-fargate`: Create kubectl configuration file.

## Destroying Resources
1. Run `eksctl delete cluster -f cluster.yaml`

## Links and References
- https://eksctl.io/usage/schema/
