# impostor
A terraform setup to host an [Impostor server](https://github.com/Impostor/Impostor) server
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 4.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.48.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_impostor_server"></a> [impostor\_server](#module\_impostor\_server) | ./modules/impostor-server | n/a |
| <a name="module_vpc"></a> [vpc](#module\_vpc) | terraform-aws-modules/vpc/aws | n/a |
| <a name="module_vpn"></a> [vpn](#module\_vpn) | ./modules/vpn | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_availability_zones.available](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/availability_zones) | data source |
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |
| [aws_route53_zone.selected](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/route53_zone) | data source |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_vpn_password"></a> [vpn\_password](#input\_vpn\_password) | Admin Password to access server | `string` | n/a | yes |
| <a name="input_vpn_username"></a> [vpn\_username](#input\_vpn\_username) | Admin Username to access server | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_vpn"></a> [vpn](#output\_vpn) | n/a |
<!-- END_TF_DOCS -->