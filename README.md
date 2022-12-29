# impostor
A terraform setup to host an [Impostor server](https://github.com/Impostor/Impostor) server
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 3.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 3.76.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_impostor_server"></a> [impostor\_server](#module\_impostor\_server) | ./modules/impostor-server | n/a |

## Resources

| Name | Type |
|------|------|
| [aws_caller_identity.current](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity) | data source |

## Inputs

No inputs.

## Outputs

No outputs.
<!-- END_TF_DOCS -->