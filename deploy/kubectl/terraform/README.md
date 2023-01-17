# Create the infrastructure using `terraform`

## Requirements
1. [Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli): 1.3.0

## Spawn Resources
1. Run `terraform init`: Download terraform modules
2. Run `terraform plan`: Check what resources will be provisioned
3. Run `terraform apply`: Provision the infrastructure!

## Destroying Resources
1. Run `terraform destroy`

## Links and References
- https://developer.hashicorp.com/terraform/tutorials/aws-get-started
- https://registry.terraform.io/modules/terraform-aws-modules/security-group/aws/latest
- https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws/latest
- https://registry.terraform.io/providers/hashicorp/local/latest/docs/resources/file
