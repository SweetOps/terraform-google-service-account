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
