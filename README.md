# terraform-playground

## Summery

The intention of this Repo is to demonstrate IaC (Infrastructure As Code) principles and "alright" practices.
This template was not created or functional or production use-cases, use at your own discresion. This is a learning tool.

The key principle here is to demonstrate a few things:

1. Iac can be used to create a consistent and repeatable environment, with templates being a "single source of truth".
2. To answer why someone would choose to use templates than building it all by hand. (revise?)

## Story

You are the network admin for AcmeCorp. You have been tasked with creating a new VPC and subnets for the DevOps team.
You have been given the following requirements:

1. Create a new VPC with a CIDR block of 10.0.0.0/16
2. Create 2 subnets
3. Call the new environment "prod1"

You may not have worked on AWS's platform very long but you were able to fumble your way through it.
Things move quick at AcmeCorp, and your boss returned to your desk the next day. The DevOps team has made mistakes over night and is now asking for a 2nd, and 3rd environment.

After some research on the internet, you found a few tools that could help you with this.
You found a tool called Terraform, and you are now tasked with creating a template that can be used to create the new environments.

You now created a simple Terraform template that will take variables, and dynamically cycle them through the template to create the new environments. This worked for the requests, but now you are being asked to create a new environment for the Security team. You suddenly envision a future where these requests do not stop, and looking at your template you notice a problem.

In small scales the template works well, but it is required to populate a list of variables "for each" environemnt. This can be prone to errors because there are two lists that need to be kept in sync (cidrs and environments).

Over night you cook up a solution where 1 list is used to create the environments, and the cidr block is calculated based on the index of the list. This works well, and now you are asked to demonstrate the value of the change to your boss.

## How-To

In it's starting state, the template will create an environment (prod1) with 2 subnets each.
In the variables.tf, "vpc_cidrs" is set with 3 cidr blocks, two of which are unused. The variable for "environaments" should be set with 1 name in it.

As you add more names, the list will run through the cidr blocks for each environment and assign based on the list for "vpc_cidrs" when you run the "terraform apply" command.

Next, you will comment out the "vpc_cidrs" variable in variables.tf. Then you will go to the locals.tf and uncomment line 5, and comment line 6 with the "#" symbol.
This will cause the template to calculate the cidr block based on the index of the "environments" variable.

Add more values into environments and run "terraform apply" to see the new environments being created/destroyed.


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
| <a name="input_environments"></a> [environments](#input\_environments) | n/a | `list(string)` | <pre>[<br>  "prod1",<br>  "dev1",<br>  "sec1"<br>]</pre> | no |
| <a name="input_prefix"></a> [prefix](#input\_prefix) | n/a | `string` | `"AcmeCorp"` | no |
| <a name="input_region"></a> [region](#input\_region) | n/a | `string` | `"ca-central-1"` | no |

## Outputs

No outputs.
<!-- END_TF_DOCS -->
