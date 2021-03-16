locals {
  service_account_key_enabled = module.this.enabled && var.create_service_account_key
}

resource "google_service_account" "default" {
  count        = module.this.enabled ? 1 : 0
  account_id   = module.this.id
  display_name = module.this.id
  description  = var.description
  project      = var.project
}

resource "google_service_account_key" "default" {
  count              = local.service_account_key_enabled ? 1 : 0
  service_account_id = join("", google_service_account.default.*.name)
  key_algorithm      = var.key_algorithm
  public_key_type    = var.public_key_type
  private_key_type   = var.private_key_type
  public_key_data    = var.public_key_data
  keepers            = var.keepers
}

data "google_iam_policy" "default" {
  count = module.this.enabled ? 1 : 0

  dynamic "binding" {
    for_each = toset(var.roles)
    content {
      role    = binding.key
      members = [format("serviceAccount:%s", join("", google_service_account.default.*.email))]
    }
  }
}
