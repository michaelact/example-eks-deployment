# Create the infrastructure using `terraform`

Terraform is an infrastructure as code tool that lets you build, change, and version cloud resources safely and efficiently.

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
