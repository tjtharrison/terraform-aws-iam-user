resource "aws_iam_user_ssh_key" "this" {
  count      = var.ssh_public_key != null ? 1 : 0
  username   = aws_iam_user.this.name
  encoding   = "SSH"
  public_key = var.ssh_public_key
}
