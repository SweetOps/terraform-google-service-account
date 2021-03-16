variable "project" {
  type        = string
  default     = null
  description = "The project in which the resource belongs. If it is not provided, the provider project is used."
}

variable "description" {
  type        = string
  default     = "Managed by Terraform"
  description = "A text description of the service account."
}

variable "create_service_account_key" {
  type        = bool
  default     = true
  description = "Whether to create service account key"
}

variable "key_algorithm" {
  type        = string
  default     = "KEY_ALG_RSA_2048"
  description = "The algorithm used to generate the key. Possible values: `KEY_ALG_UNSPECIFIED`, `KEY_ALG_RSA_1024`, `KEY_ALG_RSA_2048`"
}

variable "public_key_type" {
  type        = string
  default     = "TYPE_X509_PEM_FILE"
  description = "The output format of the public key requested."
}

variable "private_key_type" {
  type        = string
  default     = "TYPE_GOOGLE_CREDENTIALS_FILE"
  description = "The output format of the private key."
}

variable "public_key_data" {
  type        = string
  default     = null
  description = "Public key data to create a service account key for given service account. The expected format for this field is a base64 encoded X509_PEM and it conflicts with `public_key_type` and `private_key_type`."
}

variable "keepers" {
  type        = map(string)
  default     = null
  description = "Arbitrary map of values that, when changed, will trigger a new key to be generated."
}

variable "roles" {
  type        = list(string)
  default     = []
  description = "The list of roles that should be applied to service account."
}
