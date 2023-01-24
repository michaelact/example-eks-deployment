# Install the AWS Load Balancer Controller using `helm`

The AWS Load Balancer Controllers manages AWS Elastic Load Balancers for a Kubernetes Cluster. When you install the AWS Load Balancer Controller, the controller dynamically provisions:

- An AWS Application Load Balancer (ALB) when you create a Kubernetes Ingress
- An AWS Network Load Balancer (NLB) when you create a Kubernetes Service of type Load Balancer.
  - You can configure either of the target types - instance targets and IP targets.

## Requirements
1. [helm](https://helm.sh/docs/intro/install/): 3.10.3

## Install Controller
1. Add the EKS chart repo to helm: `helm repo add eks https://aws.github.io/eks-charts`
2. Install the TargetGroupBinding CRDs: `kubectl apply -k "github.com/aws/eks-charts/stable/aws-load-balancer-controller//crds?ref=master"`
3. Install the AWS Load Balancer controller: `helm install aws-load-balancer-controller eks/aws-load-balancer-controller -n kube-system -f helm-values-alb.yaml`

## Uninstall Controller
1. Install the TargetGroupBinding CRDs: `kubectl delete -k "github.com/aws/eks-charts/stable/aws-load-balancer-controller//crds?ref=master"`
2. Install the AWS Load Balancer controller: `helm delete aws-load-balancer-controller -n kube-system`

## Links and References
- https://blog.sivamuthukumar.com/aws-load-balancer-controller-on-eks-cluster
- https://github.com/aws/eks-charts/tree/master/stable/aws-load-balancer-controller
- https://artifacthub.io/packages/helm/aws/aws-load-balancer-controller
- https://artifacthub.io/packages/helm/aws/aws-load-balancer-controller?modal=values
