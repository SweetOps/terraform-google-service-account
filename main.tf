module "label" {
  source      = "git::https://github.com/SweetOps/terraform-null-label.git?ref=tags/0.6.1"
  enabled     = "${var.enabled}"
  namespace   = "${var.namespace}"
  name        = "${var.name}"
  stage       = "${var.stage}"
  environment = "${var.environment}"
  delimiter   = "${var.delimiter}"
  attributes  = "${var.attributes}"
  context     = "${var.context}"
  tags        = "${var.tags}"
}

resource "google_service_account" "default" {
  count        = "${var.enabled == "true" ? 1 : 0}"
  account_id   = "${module.label.id}"
  display_name = "${module.label.id}"
  project      = "${var.project}"
}

data "google_iam_policy" "default" {
  count = "${var.enabled == "true" ? 1 : 0}"

  binding {
    role = "${var.role}"

    members = [
      "serviceAccount:${google_service_account.default.email}",
    ]
  }
}
