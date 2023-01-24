# Deploy the application using `kubectl`

- Namespaces provides a mechanism for isolating groups of resources within a single cluster.
- Ingress is an API object that manages external access to the services in a cluster, typically HTTP.
- Kubernetes service gives Pods their own IP addresses and a single DNS name for a set of Pods, and can load-balance across them.
- Deployment provides declarative updates for [Pods](https://kubernetes.io/docs/concepts/workloads/pods/).
- Service account provides an identity for processes that run in a Pod, and maps to a ServiceAccount object.

## Requirements
1. [kubectl](https://kubernetes.io/docs/tasks/tools/#kubectl)

## Spawn Resources
1. Create kubernetes namespace: `kubectl apply -f namespace.yaml`
2. Deploy example kubernetes application: `kubectl apply -f .`

## Destroying Resources
1. Run `kubectl delete -f .`

## Links and References
- https://kubernetes.io/docs/concepts/workloads/controllers/deployment/#writing-a-deployment-spec
- https://kubernetes.io/docs/concepts/services-networking/ingress/#the-ingress-resource
- https://kubernetes.io/docs/concepts/overview/working-with-objects/namespaces/
- https://kubernetes.io/docs/concepts/services-networking/service/#defining-a-service
- https://kubernetes.io/docs/tasks/configure-pod-container/configure-service-account/
