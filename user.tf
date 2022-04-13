resource "aws_iam_user" "this" {
  name = var.user_name
  path = "/system/"

  tags = local.tags
}
