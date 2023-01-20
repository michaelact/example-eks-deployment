# Deploy the application using `kubectl`

## Requirements
1. [kubectl](https://kubernetes.io/docs/tasks/tools/#kubectl)

## Spawn Resources
1. Run `kubectl apply -f namespace.yaml`: Create kubernetes namespace
2. Run `kubectl apply -f .`: Deploy example kubernetes application

## Destroying Resources
1. Run `kubectl delete -f .`

## Links and References
- https://kubernetes.io/docs/concepts/workloads/controllers/deployment/#writing-a-deployment-spec
- https://kubernetes.io/docs/concepts/services-networking/ingress/#the-ingress-resource
- https://kubernetes.io/docs/concepts/overview/working-with-objects/namespaces/
- https://kubernetes.io/docs/concepts/services-networking/service/#defining-a-service
