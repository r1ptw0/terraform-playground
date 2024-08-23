# terraform-playground

-ipsum lorem
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.0.0 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.67.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_subnet.subnet](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_vpc.vpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) | resource |
| [aws_availability_zones.available](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/availability_zones) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_environments"></a> [environments](#input\_environments) | n/a | `list(string)` | <pre>[<br>  "sec",<br>  "prod1",<br>  "dev1",<br>  "prod2",<br>  "dev2"<br>]</pre> | no |
| <a name="input_prefix"></a> [prefix](#input\_prefix) | n/a | `string` | `"rn"` | no |
| <a name="input_vpc_cidrs"></a> [vpc\_cidrs](#input\_vpc\_cidrs) | n/a | `list(string)` | <pre>[<br>  "10.0.0.0/16",<br>  "10.1.0.0/16",<br>  "10.2.0.0/16",<br>  "10.3.0.0/16",<br>  "10.4.0.0/16"<br>]</pre> | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
