module "test_user" {
  source      = "../"
  user_name   = "firstname.surname"
  user_email  = "user@email.com"
  gpg_pub_key = "[UPDATE_ME]"
}

output "password" {
  value = module.test_user.password
}
