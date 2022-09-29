resource "aws_iam_user" "this" {
  name                 = var.user_name
  force_destroy        = true
  tags                 = local.tags
  permissions_boundary = var.permissions_boundary_arn
}

resource "aws_iam_user_login_profile" "this" {
  user    = aws_iam_user.this.name
  pgp_key = var.gpg_pub_key
}
