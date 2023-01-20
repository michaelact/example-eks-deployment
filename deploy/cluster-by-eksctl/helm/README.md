# Install the AWS Load Balancer Controller using `helm`

## Requirements
1. [helm](https://helm.sh/docs/intro/install/): 3.10.3

## Install Controller
1. Run `helm repo add eks https://aws.github.io/eks-charts`: Add the EKS chart repo to helm
2. Run `kubectl apply -k "github.com/aws/eks-charts/stable/aws-load-balancer-controller//crds?ref=master"`: Install the TargetGroupBinding CRDs
3. Run `helm install aws-load-balancer-controller eks/aws-load-balancer-controller -n kube-system -f helm-values-alb.yaml`: Install the AWS Load Balancer controller

## Uninstall Controller
1. Run `kubectl delete -k "github.com/aws/eks-charts/stable/aws-load-balancer-controller//crds?ref=master"`: Install the TargetGroupBinding CRDs
2. Run `helm delete aws-load-balancer-controller -n kube-system`: Install the AWS Load Balancer controller

## Links and References
- https://github.com/aws/eks-charts/tree/master/stable/aws-load-balancer-controller
- https://artifacthub.io/packages/helm/aws/aws-load-balancer-controller
- https://artifacthub.io/packages/helm/aws/aws-load-balancer-controller?modal=values
