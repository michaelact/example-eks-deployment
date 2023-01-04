# Example of EKS CLI Deployment 

## Requirements
1. [eksctl](https://github.com/aws/amazon-ecs-cli#installing): 0.124.0
2. [AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html): 2.4.7
3. [kubectl](https://eksctl.io/introduction/#installation)
4. [Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli): 1.3.0
5. [helm](https://helm.sh/docs/intro/install/): 3.10.3
6. [Docker](https://docs.docker.com/engine/install/)

## Configure AWS Profile
1. Generate [AWS Access Key and Secret Key via AWS Console](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_credentials_access-keys.html#Using_CreateAccessKey)
2. Run `aws configure --profile exploration`

## Build and Push Application Container Image
1. Navigate to `/path/to/example-eks-deployment/container/`
2. Follow the instruction there

## Deployment
1. Choose what deployment tools do you want to try, currently available are:
   - [eksctl](./deploy/eksctl/)
   - [AWS-CLI](./deploy/aws-cli/)
   - [Terraform](./deploy/terraform/)
2. Follow the instruction there
