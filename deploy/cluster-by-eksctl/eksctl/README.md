# Create the EKS cluster using `eksctl`

`eksctl` is a simple CLI tool for creating and managing clusters on EKS.

## Requirements
1. [eksctl](https://github.com/aws/amazon-ecs-cli#installing): 0.124.0

## Spawn EKS Cluster
1. Provision the EKS Cluster: `eksctl create cluster -f cluster.yaml`

## Create Kubernetes Config File

The kubectl config file is a configuration file that stores all the information necessary to interact with a Kubernetes cluster. It contains the following information:

- The name of the Kubernetes cluster
- The location of the Kubernetes API server
- The credentials (username and password) for authenticating with the Kubernetes API server
- The names of all contexts defined in the cluster

1. Create kubectl configuration file: `aws eks update-kubeconfig --region us-east-2 --name eks-cluster-exploration-fargate`

The file will be stored on `$HOME/.kube/config`.

## Destroying Resources
1. Run `eksctl delete cluster -f cluster.yaml`

## Links and References
- https://eksctl.io/usage/schema/
