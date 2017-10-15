variable "account_id" {
  description = "The service account ID."
}

variable "display_name" {
  description = "The display name for the service account."
  default     = "Managed by Terraform"
}

variable "project" {
  description = "GCE project name"
  default     = ""
}

variable "role" {
  description = "The role/permission that will be granted to the members."
}
