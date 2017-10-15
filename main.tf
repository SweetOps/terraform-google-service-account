data "google_client_config" "default" {}

resource "google_service_account" "default" {
  account_id   = "${var.account_id}"
  display_name = "${var.display_name}"
  project      = "${length(var.project) > 0 ? var.project : data.google_client_config.default.project}"
}

data "google_iam_policy" "default" {
  binding {
    role = "${var.role}"

    members = [
      "serviceAccount:${google_service_account.default.email}",
    ]
  }
}

resource "google_project_iam_policy" "default" {
  project     = "${length(var.project) > 0 ? var.project : data.google_client_config.default.project}"
  policy_data = "${data.google_iam_policy.default.policy_data}"
}
