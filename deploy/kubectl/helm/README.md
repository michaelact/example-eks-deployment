# Install the AWS Load Balancer Controller using `helm`

## Requirements
1. [helm](https://helm.sh/docs/intro/install/): 3.10.3

## Install Controller
1. Run `helm repo add eks https://aws.github.io/eks-charts`: Add the EKS chart repo to helm
2. Run `kubectl apply -k "github.com/aws/eks-charts/stable aws-load-balancer-controller//crds?ref=master"`: Install the AWS Load Balancer Controller CRDs - Ingress Class Params and Target Group Bindings
3. Run `helm install aws-load-balancer-controller eks/aws-load-balancer-controller -n kube-system --set clusterName=<cluster-name> --set serviceAccount.create=false --set serviceAccount.name=aws-load-balancer`: Install the helm chart by passing the `serviceAccount.create=false` and `serviceAccount.name=aws-load-balancer-controller`
