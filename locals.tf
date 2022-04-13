locals {
    tags = merge(var.tags,{
        "owner": var.user_name,
        "email_address": var.user_email
    })
}