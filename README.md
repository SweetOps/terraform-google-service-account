# terraform-google-service-account
Terraform module : GCP : for creation service account.

## Usage

```terraform
module "s3_service_account" {
  source     = "git::https://github.com/SweetOps/terraform-google-service-account.git?ref=master"
  account_id = "some-name"
  role       = "roles/storage.objectViewer"
}
```


## Inputs

| Name           | Description                                              |  Type  | Default | Required |
|:---------------|:---------------------------------------------------------|:------:|:-------:|:--------:|
| `account_id`   | The service account ID.                                  | string |    -    |   yes    |
| `display_name` | The display name for the service account.                | string |   ``    |    no    |
| `project`      | GCE project name                                         | string |   ``    |    no    |
| `role`         | The role/permission that will be granted to the members. | string |    -    |   yes    |

## Outputs

| Name                        | Description                                      |
|:----------------------------|:-------------------------------------------------|
| `iam_policy_etag`           | The etag of the project's IAM policy.            |
| `service_account_email`     | The e-mail address of the service account.       |
| `service_account_name`      | The fully-qualified name of the service account. |
| `service_account_unique_id` | The unique id of the service account.            |
