variable "user_name" {
  description = "The name to assign to the user and access key"
}

variable "gpg_pub_key" {
  description = "Base64 encoded gpg string (See README.md for more information)"
  sensitive = true
  type = string
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

variable "permissions_boundary_arn" {
  description = "The ARN of the permission boundary to assign to the user"
  default = null
}
