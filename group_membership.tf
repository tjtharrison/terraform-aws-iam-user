resource "aws_iam_user_group_membership" "this" {
  for_each = toset(var.groups_to_join)
  user     = aws_iam_user.this.name
  groups = [
    each.key
  ]
}
