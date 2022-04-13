variable "user_name" {
  description = "The name to assign to the user and access key"
}

variable "gpg_pub_key" {
  sensitive = true
}

variable "enable_access_key" {
  type        = bool
  description = "Create access key to attach to the user"
  default     = false
}

variable "groups_to_join" {
  description = "List of groups for the user to join"
  type        = list(string)
  default     = []
}

variable "ssh_public_key" {
  description = "Public SSH key for the user"
  default     = null
  type        = string
  sensitive   = true
}

variable "tags" {
  description = "Additional tags to add to the resources"
  default     = {}
}

variable "user_email" {
  description = "Email address to assign to the user account"
}
