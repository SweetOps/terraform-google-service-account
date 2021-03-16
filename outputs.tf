output "email" {
  value       = join("", google_service_account.default.*.email)
  description = "The e-mail address of the service account."
}

output "name" {
  value       = join("", google_service_account.default.*.name)
  description = "The fully-qualified name of the service account."
}

output "unique_id" {
  value       = join("", google_service_account.default.*.unique_id)
  description = "The unique id of the service account."
}

output "id" {
  value       = join("", google_service_account.default.*.id)
  description = "The id of the service account."
}

output "key_id" {
  value       = join("", google_service_account_key.default.*.id)
  description = "The id of the service account key."
}

output "key_name" {
  value       = join("", google_service_account_key.default.*.name)
  description = "The name of the service account key."
}

output "public_key" {
  value       = join("", google_service_account_key.default.*.public_key)
  description = "The public key, base64 encoded."
}

output "private_key" {
  value       = join("", google_service_account_key.default.*.private_key)
  description = "The private key in JSON format, base64 encoded."
  sensitive   = true
}
