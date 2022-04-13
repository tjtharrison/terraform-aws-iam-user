# terraform-aws-iam-user

Terraform module for IAM user with optional access key, this module does not permit direct adding of policies as this is against best practices. To attach policies, use groups_to_join variable to join the generated user to an existing group.

# PGP Encryption key

This module requires access to a base64 encoded GPG key. This can be generated as follows (MacOS):

```
gpg --export [your-key-id] | base64
```

This should be treated as a password and stored securely (Eg in Secrets Manager)

# SES Credentials

The SES credentials are output, encrypted with the pgp key provided - An example of decrypting these would be to extract from terraform output, before decoding and decrypting:

```
terraform output --json aws_access_key | jq -r .encrypted_ses_smtp_password_v4 | base64 -d | gpg -d
```

<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_access_key.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_access_key) | resource |
| [aws_iam_user.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user) | resource |
| [aws_iam_user_group_membership.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user_group_membership) | resource |
| [aws_iam_user_ssh_key.this](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user_ssh_key) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_enable_access_key"></a> [enable\_access\_key](#input\_enable\_access\_key) | Create access key to attach to the user | `bool` | `false` | no |
| <a name="input_gpg_pub_key"></a> [gpg\_pub\_key](#input\_gpg\_pub\_key) | Base64 encoded gpg string (See README.md for more information) | `string` | n/a | yes |
| <a name="input_groups_to_join"></a> [groups\_to\_join](#input\_groups\_to\_join) | List of groups for the user to join | `list(string)` | `[]` | no |
| <a name="input_permissions_boundary_arn"></a> [permissions\_boundary\_arn](#input\_permissions\_boundary\_arn) | The ARN of the permission boundary to assign to the user | `any` | `null` | no |
| <a name="input_ssh_public_key"></a> [ssh\_public\_key](#input\_ssh\_public\_key) | Public SSH key for the user | `string` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | Additional tags to add to the resources | `map` | `{}` | no |
| <a name="input_user_email"></a> [user\_email](#input\_user\_email) | Email address to assign to the user account | `any` | n/a | yes |
| <a name="input_user_name"></a> [user\_name](#input\_user\_name) | The name to assign to the user and access key | `any` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_aws_access_key"></a> [aws\_access\_key](#output\_aws\_access\_key) | n/a |
| <a name="output_iam_user"></a> [iam\_user](#output\_iam\_user) | n/a |
<!-- END_TF_DOCS -->