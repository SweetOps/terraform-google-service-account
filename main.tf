locals {
  service_account_key_enabled = module.this.enabled && var.create_service_account_key
  iam_policy_enabled          = module.this.enabled && length(var.roles) > 0
  iam_policy_count            = module.this.enabled && length(var.roles) > 0 ? length(var.roles) : 0
}

resource "google_service_account" "default" {
  count = module.this.enabled ? 1 : 0

  account_id   = module.this.id
  display_name = module.this.id
  description  = var.description
  project      = var.project
}

resource "google_service_account_key" "default" {
  count = local.service_account_key_enabled ? 1 : 0

  service_account_id = join("", google_service_account.default.*.name)
  key_algorithm      = var.key_algorithm
  public_key_type    = var.public_key_type
  private_key_type   = var.private_key_type
  public_key_data    = var.public_key_data
  keepers            = var.keepers
}

resource "google_project_iam_member" "default" {
  count = local.iam_policy_count

  project = var.project
  role    = var.roles[count.index]
  member  = format("serviceAccount:%s", join("", google_service_account.default.*.email))
}
