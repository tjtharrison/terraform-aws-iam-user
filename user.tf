resource "aws_iam_user" "this" {
  name          = var.user_name
  force_destroy = true
  tags          = local.tags
  permissions_boundary = var.permissions_boundary_arn
}
