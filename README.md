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
