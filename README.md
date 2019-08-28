# terraform-google-service-account
Terraform module : GCP : for creation service account.

## Usage

```terraform
module "s3_service_account" {
  source     = "git::https://github.com/SweetOps/terraform-google-service-account.git?ref=master"
  name      = "awesome"
  stage     = "production"
  namespace = "sweetops"
}
```


## Inputs

| Name        | Description                                                                                     |  Type  | Default  | Required |
|:------------|:------------------------------------------------------------------------------------------------|:------:|:--------:|:--------:|
| name        | Solution name, e.g. 'app' or 'jenkins'                                                          | string |   n/a    |   yes    |
| namespace   | Namespace, which could be your organization name or abbreviation, e.g. 'eg' or 'cp'             | string |   n/a    |   yes    |
| stage       | Stage, e.g. 'prod', 'staging', 'dev', OR 'source', 'build', 'test', 'deploy', 'release'         | string |   n/a    |   yes    |
| attributes  | Additional attributes (e.g. `1`)                                                                |  list  |   `[]`   |    no    |
| delimiter   | Delimiter to be used between `namespace`, `environment`, `stage`, `name` and `attributes`       | string |  `"-"`   |    no    |
| enabled     | Set to false to prevent the module from creating any resources                                  | string | `"true"` |    no    |
| environment | Environment, e.g. 'prod', 'staging', 'dev', 'pre-prod', 'UAT'                                   | string |   `""`   |    no    |
| project     | The project in which the resource belongs. If it is not provided, the provider project is used. | string |   `""`   |    no    |
| tags        | Additional tags (e.g. `map('BusinessUnit','XYZ')`                                               |  map   |   `{}`   |    no    |

## Outputs

| Name      | Description                                      |
|:----------|:-------------------------------------------------|
| email     | The e-mail address of the service account.       |
| name      | The fully-qualified name of the service account. |
| unique_id | The unique id of the service account.            |
