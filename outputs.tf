output "aws_access_key" {
  sensitive = true
  value     = var.enable_access_key ? aws_iam_access_key.this : null
}

output "iam_user" {
  sensitive = true
  value     = aws_iam_user.this
}
