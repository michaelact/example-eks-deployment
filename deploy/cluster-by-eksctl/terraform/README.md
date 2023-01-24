# Create the infrastructure using `terraform`

Terraform is an infrastructure as code tool that lets you build, change, and version cloud resources safely and efficiently.

- Amazon Virtual Private Cloud (Amazon VPC) enables you to launch AWS resources into a virtual network that you've defined. This virtual network closely resembles a traditional network that you'd operate in your own data center, with the benefits of using the scalable infrastructure of AWS.
- AWS Security Group acts as a virtual firewall for your EC2 instances to control incoming and outgoing traffic.

## Requirements
1. [Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli): 1.3.0

## Spawn Resources
1. Download terraform modules: `terraform init`
2. Check what resources will be provisioned: `terraform plan`
3. Provision the infrastructure: `terraform apply`

## Destroying Resources
1. Run `terraform destroy`

## Links and References
- https://developer.hashicorp.com/terraform/tutorials/aws-get-started
- https://registry.terraform.io/modules/terraform-aws-modules/security-group/aws/latest
- https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws/latest
- https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file
- https://docs.aws.amazon.com/vpc/latest/userguide/what-is-amazon-vpc.html
- https://www.checkpoint.com/cyber-hub/cloud-security/what-is-aws-security-groups/
