## Requirements

| Name | Version |
|------|---------|
| terraform | ~> 0.13 |
| azuread | =1.0.0 |
| azurerm | =2.29.0 |
| local | =1.4.0 |
| null | =2.1.2 |
| random | =2.3.0 |

## Providers

| Name | Version |
|------|---------|
| azurerm | =2.29.0 |
| random | =2.3.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| location | The location where resources will be created | `any` | n/a | yes |
| prefix | Define a project name that everyone can relate to | `string` | n/a | yes |
| resource\_group\_name | The name of the resource group in which the resources will be created | `any` | n/a | yes |
| tags | A map of the tags to use for the resources that are deployed | `map(string)` | n/a | yes |

## Outputs

No output.

