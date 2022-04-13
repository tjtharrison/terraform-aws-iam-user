resource "aws_iam_access_key" "this" {
  count   = var.enable_access_key ? 1 : 0
  pgp_key = var.gpg_pub_key
  user    = aws_iam_user.this.name
}
